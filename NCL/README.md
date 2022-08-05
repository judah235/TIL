# NCL

## Resources

* ### vp (view point)
  * vpWidthF : 객체의 너비를 지정한다 ; def =0.6(NDC)
  * vpHeightF : 객체의 높이를 지정한다 ; def =0.6(NDC)
---
* ### tr (transformation)
  * trX(Y)MinF : 좌표계의 하한을 정의 ; def =0.0
  * trX(Y)MaxF : 좌표계의 상한을 정의 ; def =1.0
  * trX(Y)Reverse : 축이 선형 또는 로그인 경우 축을 반전시킨다. ; def =False
---
* ### ti (title)
  * tiMainString : 주 제목으로 사용할 문자열 설정 ; def ="Main"
  * tiMainFontHeightF : 주 제목의 글꼴 높이를 설정 ; def =0.025(NDC)
  * tiX(Y)AxisString : 축의 제목으로 사용할 문자열을 설정 ; def ="X(Y)Axis"
---
* ### xy (xy plots)
  * xyDashPattern : 선의 모양을 설정 ; def =SolidLine
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
---
* ### gsn (gsn high-level interfaces)
  * gsnLeft(Right)String : 문자열을 그래프 위쪽에서 지정 방향으로 추가
  * gsnYRefLine : 지정된 Y 값에 수평선을 그림
  * gsnAboveYRefLinecolor : Y 기준선 위의 선을 지정 색으로 채움
  * gsnBelowYRefLinecolor : Y 기준선 아래의 선을 지정 색으로 채움
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
---
* ### lg (legends)
  * lgLabelFontHeightF : 범례 레이블 폰트 높이 설정 ; def =0.02(NDC)