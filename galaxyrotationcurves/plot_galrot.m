clear all;
files = dir('Rotmod/*.dat');
ngals = size(files,1);
SPARC = cell(1,ngals);
for i = 1:ngals
    name = strcat('Rotmod/',files(i).name);
    SPARC{i} = dlmread(name,'\t',3,0);
end

%%
clf

col = linspecer(18);


darkmagenta = [0.545098 0 0.545098];
violet =  [0.580392 0 0.827451];
plum = [ 0.866667 0.627451 0.866667];
ii = 1;
for i = 1:ngals
    gal = SPARC{i};
    gcol = col(ii,:);
    if size(gal,1)>40
        R = gal(:,1); % kpc
        Vobs = smooth(gal(:,2),3); % km/s
        errV = gal(:,3); % km/s
        %fill([R;flipud(R)],[Vobs-errV;flipud(Vobs+errV)],gcol,'edgecolor',gcol,'linewidth',1.5)
        plot(R,Vobs,'-','color',gcol,'linewidth',3);hold on
        np = size(gal,1);
        for j = 1:np
            plot([R(j),R(j)],[Vobs(j)-errV(j),Vobs(j)+errV(j)],'linewidth',1.5,'color',gcol)
        end
        ii =  ii+1
    end
    
end
xlim([0,70])
ylim([0,400])
xlabel('$r$ [kpc]','fontsize',30);
ylabel('$v_{\rm obs}$ [km s$^{-1}$]','fontsize',30);
set(gca,'fontsize',20,'position',[0.1091    0.1569    0.8677    0.7784],'ticklength',[0,0])
set(gcf,'position',[209   545   990   510])