# NCL

## Resources
* ### am (annotation manager)
  * 
---
* ### app (app)
  * 
---
* ### ca (coordinate array)
  * 
---
* ### cn (contour)
  * cnLevelSelectionMode : 등고선 간격 설정 ; def = AutomaticLevels
    * AutomaticLevels : 데이터를 기준으로 자동 설정
    * ManualLevels : 표시된 등고선 최저 최고와 간격을 기준으로 설정
      * cnMin(Max)LevelValF : 등고선의 최저 최고 레벨을 설정
    * ExplicitLevels : cnLevels를 사용하여 배열로 등고선 레벨을 설정
      * cnLevels : 실수 배열로 등고선 레벨을 설정
    * EqualSpacedLevels : ?
  * cnLevelSpacingF : cnLevelSelectionMode가 AutomaticLevels or ManualLevels 일 때 등고선 간격을 결정 ; def =5.0
  * cnLinesOn : 등고선 표시 여부 설정 ; def =True
  * cnLineThicknessF : 등고선 두께 설정 ; def =1.0
  * cnLineDashPattern : 등고선 패턴 설정 ; def =0
  * cnLineLabelFontHeightF : 등고선 레이블 폰트 높이 설정 ; def =0.012(NDC, if vpWidthF==0.6)
  * cnLineLabelFontColor : 등고선 레이블 색상 설정 ; def =1
  * cnInfoLabelOn : 등고선 레이블 표시 여부 설정 ; def =True
  * cnFillOn : 등고선 음영 여부 설정 ; def =False
  * cnFillPalette : 색상 파레트 설정 ; def =None
    * [컬러 맵](https://www.ncl.ucar.edu/Document/Graphics/color_table_gallery.shtml)
---
* ### ct (coordinate array table)
  * 
---
* ### dc (data comm)
  * 
---
* ### err (error)
  * 
---
* ### gs (graphics styles)
  * 
---
* ### gsn (gsn high-level interfaces)
  * gsnLeft(Right)String : 문자열을 그래프 위쪽에서 지정 방향으로 추가
  * gsnYRefLine : 지정된 Y 값에 수평선을 그림
  * gsnAboveYRefLinecolor : Y 기준선 위의 선을 지정 색으로 채움 ; def =None
  * gsnBelowYRefLinecolor : Y 기준선 아래의 선을 지정 색으로 채움 ; def =None
  * gsnXYBarChart : gsn_csm_xy 선 그래프를 막대차트로 변경 여부 설정 ; def =None
  * gsnXYBarChartColors : 막대차트의 개별 색상 설정 ; def =None
  * gsnXYBarChartBarWidth : 막대차트 막대의 너비 설정
  * gsnFrame : 호출시 프레임 진행 여부 설정 ; def =True
  * gsnContourZeroLineThicknessF : 0 값의 선 두께 배율 설정 ; def =1.0
  * gsnContourNegLineDashPattern : 음수 자료들의 등고선 패턴 설정 ; def =0
  * gsnAddCyclic : 전구 자료가 아닌 자료를 그릴 경우 False
---
* ### lb (label bar)
  * lbBoxMajorExtentF : 레이블 막대가 상자에 할당된 면적 중 실제 상자가 차지하는 면적비율 (0~1); def =1.0
  * lbMonoFillPattern : 레이블 막대가 단일 패턴으로 설정된다 ; def =False
    * lbFillPattern : 패턴을 설정한다 ; def =0
      * [채우기 패턴](https://www.ncl.ucar.edu/Document/Graphics/Images/fillpatterns.png)
  * lbLableFontHeightF : 레이블 폰트 높이 설정 ; def =0.02(NDC)
  * lbPerimOn : 라벨 선 여부 설정 ; def =True
  * lbLabelStride : 라벨에 표현하는 값의 인덱스 간격 ; def =1
  * lbBoxLinesOn : 등고선 라벨 선 여부 설정 ; def = True
  * lbOrientation  : 등고선 라벨 수평 수직 설정 ; def = Vertical
---
* ### lg (legends)
  * lgLabelFontHeightF : 범례 레이블 폰트 높이 설정 ; def =0.02(NDC)
---
* ### mp (maps)
  * mpLimitMode : 투영된 지구본의 범위를 결정하는 방법 설정
    * MaimalArea
    * LatLon
      * mpMin(Max)Lat(Lon)F : 지도 범위 설정 ; def =+-90,+=180
    * corners
      * mpLeft(Right)CornerLat(Lon)F : 지도 범위 설정
  * mpCenterLonF : 위도 중심 지도 ; def =0
  * mpCenterLatF : 경도 중심 지도 ; def =0
  * mpProjection : 지도 투영법 정의 ; def =CylindricalEquidistant
    * [투영법](https://www.ncl.ucar.edu/Document/HLUs/Classes/MapTransformation.shtml#NhlTProjection)
  * mpGridAndLimbOn : 위경도와 가시 표면 가장자리 주변 표시 여부 설정 ; def =True
  * mpGridLineDashPattern : 격자 선 패턴 설정 ; def =0
  * mpGridLineThicknessF : 격자 선을 종속 단위의 배율로 두께 설정 ; def =15.0
  * mpDefaultFillColor : 기본색상(색상이 특정되지 않은 부분) ; def =16
  * mpOceanFillColor : 해양의 색상을 지정 ; def =10
  * mpLandFillColor : 지표의 색상을 지정 ; def =8
  * mpInlandWaterFillColor :지표수의 색상을 지정 ; def =10
  * mpFillColors : \[기본,해양,지표,지표수,...(동적요소)]의 색상을 한 번에 지정 ; def =[16,10,8,10,26,22,11,23,13,19]
---
* ### pm (plot manager)
  * pmLegendDisplayMode : 범례 표시 설정 ; def =NoCreate
    * NoCreate
    * Never
    * Always : True?
    * Conditional
  * pmLegendSide : 범례 위치 설정 ; def =Bottom
    * Top
    * Bottom
    * Right
    * Left
  * pmLegendParallelPosF : pmLegendSide에 평행한 방향으로 범례를 이동한다. ; def =0.5(NDC)
  * pmLegendOrthogonalPosF : pmLegendSide에 수직 방향으로 범례를 이동한다. ; def =0.02
  * pmLegendWidthF : 범례의 너비 설정 ; def =0.55(NDC,if vpWidthF==0.6)
  * pmLegendHeightF : 범례의 높이 설정 ; def =0.17(if vpHeightF==0.6)
  * pmTickMarkDisplayMode : 틱 마크 표시 여부 설정 ; def =NoCreate
    * NoCreate
    * Never
    * Always
    * Conditional
---
* ### pr (primitives)
  * 
---
* ### sf (scalar field)
  * 
---
* ### st (streamline)
  * stMinArrowSpacingF : 단일 스트림 라인을 따라 인접한 방향 화살표에 대한 최소 간격 설정
  * stArrowLengthF : 방향 화살표 길이 설정
  * stLineThicknessF : 유선을 종속 단위의 배율 두께로 설정 ; def =1
  * stLineColor : 유선 색 설정 ; def =Foreground
---
* ### tf (transform)
  * 
---
* ### ti (title)
  * tiMainString : 주 제목으로 사용할 문자열 설정 ; def ="Main"
  * tiMainFontHeightF : 주 제목의 글꼴 높이를 설정 ; def =0.025(NDC)
  * tiX(Y)AxisString : 축의 제목으로 사용할 문자열을 설정 ; def ="X(Y)Axis"
---
* ### tm (tickmark)
  * tmX(Y)MajorGrid : 축의 그리드(격자)를 설정 ; def =False
  * tmX(Y)MajorGridLineDashPattern : 주 축의 그리드 선에 패턴을 설정 ; def =0
  * tmX(Y)MajorGridThicknessF : 주 축의 그리드 선 두께를 설정 ; def =2.0
  * tmXB(YL)Mode : 축 눈금 간격과 레이블의 내용을 지정하는 방법을 설정 ; def =Automatic
    * Automatic : 자동 설정
    * Manual : 눈금 시작, 종료, 간격을 지정하고 눈금 표시
      * tmXB(YL)TickStartF : 눈금 시작 설정
      * tmXB(YL)TickEndF : 눈금 종료 설정
      * tmXB(YL)TickSpacingF : 눈금 간격 설정
    * Explicit : tmXB(YL)Values를 사용하여 배열로 눈금을 설정하고 
      * tmXB(YL)Values : 배열로 눈금을 설정
      * tmXB(YL)Labels : 배열로 레이블을 설정
    * tmXB(YR)On : 아래(오른쪽) 눈금 여부 설정 ; def =True
    * tmXT(YL)On : 위(왼쪽) 눈금 여부 설정 ; def =True
    * tmXB(YR)BorderOn : 아래(오른쪽) 테두리 여부 설정 ; def =True
    * tmXT(YL)BorderOn : 위(왼쪽) 테두리 여부 설정 ; def =True
---
* ### tr (transformation)
  * trX(Y)MinF : 좌표계의 하한을 정의 ; def =0.0
  * trX(Y)MaxF : 좌표계의 상한을 정의 ; def =1.0
  * trX(Y)Reverse : 축이 선형 또는 로그인 경우 축을 반전시킨다. ; def =False
---
* ### tx (txt)
  * 
---
* ### vc (vectors)
  * vcRefLengthF : 레퍼런스 벡터 크기 설정
  * vcRefMagnitudeF : 레퍼런스 벡터 값 ; def =0
  * vcLineArrowThicknessF : 벡터 화살표 두께 설정 ; def =1
  * vcLineArrowColor :  벡터 화살표 색상 설정 ; def =Foreground
  * vcRefAnnfontColor : 레퍼런스 벡터 색상 설정 ; def =Foreground
  * vcGlyphStyle : 벡터 크기와 방향을 나타내는 스타일 설정 ; def =LineArrow
    * LineArrow : 직선 벡터 (길이,헤드 크기)
    * FillArrow : 직선 벡터 (길이, 너비)
    * WindBarb : 일기도 기호
    * CurlyVector : 곡선 벡터
---
* ### vf (vector field)
  * 
---
* ### vp (viewport)
  * vpWidthF : 객체의 너비를 지정한다 ; def =0.6(NDC)
  * vpHeightF : 객체의 높이를 지정한다 ; def =0.6(NDC)
---
* ### wk (workstation)
  * 
---
* ### ws (workspace)
  * 
---
* ### xy (xy plots)
  * xyDashPattern : 선의 모양을 설정 ; def =0
    * xyDashPatterns : 인덱스 배열로 설정하고 선이 더 많다면 xyDashPattern 설정을 따름
    * [라인 패턴](https://www.ncl.ucar.edu/Document/Graphics/Images/dashpatterns.png)
  * xyMarkLineMode : 마커와 선의 표시 여부를 설정 ; def =Lines
    * xyMarkLineModes : 인덱스 배열로 설정하고 선이 더 많다면 xyMarkLineMode 설정을 따름
    * Lines : 선만 표시
    * Markers : 마커만 표시
    * MarkLines : 선과 마커 모두 표시
  * xyMarker : 마커 모양을 설정 ; def =0
    * xyMarkers :인덱스 배열로 설정하고 선이 더 많다면 xyMarker 설정을 따름
    * [마커 패턴](https://www.ncl.ucar.edu/Document/Graphics/Images/markers.png)
  * xyMarkerSizeF : 마커 크기를 설정 ; def =0.01(NDC)
    * xyMarkerSizes : 실수 배열로 설정하고 선이 더 많다면 xyMarkerSizeF 설정을 따름
  * xyMarkerThicknessF : 마커 선 두께 설정 ; def =1.0(NDC)
    * xyMarkerThicknesses : 실수 배열로 설정하고 선이 더 많다면 xyMarkerThicknessF 설정을 따름
  * xyMarkerColor : 마커 색을 설정 ; def =Foregrount(1)
    * xyMarkerColors : 인덱스 배열로 설정하고 선이 더 많다면 xyMarkerColor 설정을 따름
  * xyX(Y)style : 축의 스타일을 설정 ; def =Linear
    * Linear
    * Log
    * Irregular
  * xyExplicitLegendLabels : 범례 레이블을 문자열 배열로 설정
---

<br><br><br>

## Functions

|||
-|-
tofloat|데이터 타입을 실수형으로 변형
ispan|정수 배열생성 (시작,끝,간격)
fspan|실수 배열생성 (시작,끝,간격)
str_split|문자열 분리 (문자열,구분자)
gsn_define_colormap|워크 스테이션에 컬러 맵을 설정
gsn_csm_XY|xy 그래프를 그림(wks, x, y, res)
gsn_csm_Contour_map|지도 위에 등고선을 그림(wks, variable, res)
gsn_csm_Contour|등고선을 그림 (wks, variable, res)
gsn_labelbar_ndc|워크 스테이션에 라벨바를 그림
gsn_csm_pres_hgt|기압, 고도 바람장을 그림 (wks, variable, res)
gsn_csm_vector_map|지도 위에 벡터를 그림 (wks, u data, v data, res)
gsn_csm_vector|벡터를 그림 (wks, u data, v data, res)
gsn_csm_stramline|유선을 그림 (wks,u data,v data,res)
gsn_csm_streamline_scalar_map|지도 위에 유선을 그림 (wks, u data, v data, variable, res)
gsn_csm_map|지도만 그림