# geopandas.GeoSeries.bounds

geopandas 모듈 내 함수

> 각각의 geometry에 대해 minx,miny,maxx,maxy 값을 데이터프레임 형태로 반환



```python
import geopandas as gpd
from shapely.geometry import Point, Polygon, MultiPolygon

gdf = gpd.read_file('~~.shp').set_crs('EPSG:5181')
gdf.geometry.bounds
```

- 출력 예시

|      | minx | miny | maxx | maxy |
| ---- | ---- | ---- | ---- | ---- |
| 0    | 123  | 123  | 123  | 123  |



- 참고자료
  - https://geopandas.org/en/stable/docs/reference/api/geopandas.GeoSeries.bounds.html
  - sam's code

