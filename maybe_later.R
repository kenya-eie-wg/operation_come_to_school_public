library(rgdal)

roads_ogr <- readOGR("./data/kenya_roads/Kenya_roads_version2.shp")

roads_lines <- as(roads_ogr, "SpatialLinesDataFrame")

writeOGR(roads_lines, dsn = ".", layer = "Kenya_roads_version2", driver="ESRI Shapefile",overwrite_layer=TRUE)