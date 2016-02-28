function Procoloraver()
   twin = imread('twins_g.tif');
   [H S I] = Myrgb2hsi(twin);
   [Y Cb Cr] = Myrgb2ycbcr(twin);
    r = twin(:,:,1);
    g = twin(:,:,2);
    b = twin(:,:,3);
    
     r = Myaver(r);
     g = Myaver(g);
     b = Myaver(b);
     I = Myaver(I);
     Y = Myaver(Y);   

    subplot(221);
    imshow(twin);
    title('input image');
    
    subplot(222);
    imshow(cat(3,r,g,b),[]);
    title('on all RGB');

    subplot(223);
    [r2 g2 b2] = Mycbcr2yrgb(Y,Cb,Cr);
    imshow(cat(3,r2,g2,b2),[]);
    title('average filter only on Y');

    subplot(224);
    [r1 g1 b1] = Myhsi2rgb(H,S,I);
    imshow(cat(3,r1,g1,b1),[]);
    title('average filter only on I');
    
    
end

