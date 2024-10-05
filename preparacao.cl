!ls Flat* > flat.txt
imcombine @flat.txt flat.fits combine=median reject=avsigclip scale=mode
!ls Bias* > bias.txt
imcombine @bias.txt bias.fits combine=average reject=avsigclip scale=none
!ls Dark* > dark.txt
imcombine @dark.txt dark.fits combine=median reject=avsigclip scale=none
imarith flat.fits - bias.fits flat.fits
imarith flat.fits - dark.fits flat.fits
noao
imred
generic
normalize flat.fits
display flat.fits
imstat flat.fits


