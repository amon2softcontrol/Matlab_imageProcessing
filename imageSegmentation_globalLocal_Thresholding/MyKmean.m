function MyKmean()
%% Read image
% store image in coin variale
    image = imread('kodim03.png');
%% Initialize cluster
k = 4;
section_size = round((size(image,1).*size(image,2))./k);
clusterA = image(1:128,:,:);
clusterB = image(129:256,:,:);
clusterC = image(257:384,:,:);
clusterD = image(385:512,:,:);
% imshow(cat(1,clusterA,clusterB,clusterC,clusterD))
%%
done = false;
while ~done

    global meanA;global meanB;global meanC;global meanD;
    
    meanA = mean(clusterA(:));
    meanB = mean(clusterB(:));
    meanC = mean(clusterC(:));
    meanD = mean(clusterD(:));

    clusterA = adjustClusterA(clusterA,clusterB,clusterC,clusterD);
    clusterB = adjustClusterB(clusterA,clusterB,clusterC,clusterD);
    clusterC = adjustClusterC(clusterA,clusterB,clusterC,clusterD);
    clusterD = adjustClusterD(clusterA,clusterB,clusterC,clusterD);
           
end

    %% Display thresholded image
 output = coin;
 imshow(output,[]);
end


function output = adjustClusterA(a,b,c,d)

global meanB;global meanA;global meanC;global meanD;

    
   
  for i=1:size(a,1)
       for j=1:size(a,2)
          
           aa = [ a(i,j,1) - meanB,meanA-meanB,meanA-meanB];
            
       end
  end
  
  A = a( a < mean );
  B = b( b < mean );
  C = c( c < mean );
  D = d( d < mean );
  
end

function checkCluster()
end