/*
 Tokyo Disneyland pedestrian network extraction
 Data source: OpenStreetMap contributors (ODbL)
 Bounding box: south,west,north,east
 Covers the park interior plus a small margin; review output before use.
*/
[out:json][timeout:90];
(
  way[highway~"^(footway|pedestrian|path|steps|corridor|living_street|service)$"](35.6280,139.8740,35.6380,139.8880);
  way[highway][area=yes](35.6280,139.8740,35.6380,139.8880);
  node[entrance](35.6280,139.8740,35.6380,139.8880);
  node[highway=crossing](35.6280,139.8740,35.6380,139.8880);
);
out body geom;
