dat = asciiread("../data/TMP.txt",(/37,3/),"float") ; file load

prs=dat(:,0) ; first column
equ=dat(:,1)
mid=dat(:,2)


wks =gsn_open_wks("x11","xy_logp") ;open workstation
res=True ;resource activation

res@tiXAxisString="Temperature" ; set X axis title
res@tiYAxisString="Pressure" ; set Y axis title
res@gsnLeftString="Vertical temperature profile" ; add string above the plot's upper boundary and left
res@gsnRightString="K" ; add string above the plot's upper boundary and right

res@xyLineThicknesses=(/5,5/) ; line thicknesses

res@xyYStyle="log" ; change the Y axis style to the log axis
res@trYReverse=True ; Y axis reverse
res@trYMinF=1 ; Y min
res@tmYLMode="Explicit" ; set Y axis tick spacing and lables using tmYLValues
res@tmYLValues=(/1000,500,200,100,50,20,10,5,2,1/) ; specifies an array of data locations at Y axis
res@tmYLLabels=res@tmYLValues ; specifies an array of strings at Y axis

plt=gsn_csm_xy(wks,(/equ,mid/),prs,res) 