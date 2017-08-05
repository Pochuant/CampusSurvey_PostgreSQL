INSERT INTO hw3 (name, location) VALUES ('Lorenzo (home)', ST_GeographyFromText('SRID=4326;POINT(-118.273 34.027)') );

INSERT INTO hw3 (name, location) VALUES ('Social Work', ST_GeographyFromText('SRID=4326;POINT(-118.282 34.022)') );

INSERT INTO hw3 (name, location) VALUES ('Leavey Library', ST_GeographyFromText('SRID=4326;POINT(-118.283 34.0218)') );

INSERT INTO hw3 (name, location) VALUES ('BOA', ST_GeographyFromText('SRID=4326;POINT(-118.291 34.025)') );

INSERT INTO hw3 (name, location) VALUES ('Citi Bank', ST_GeographyFromText('SRID=4326;POINT(-118.292 34.022)') );

INSERT INTO hw3 (name, location) VALUES ('Gerontology', ST_GeographyFromText('SRID=4326;POINT(-118.290 34.020)') );

INSERT INTO hw3 (name, location) VALUES ('RTCC', ST_GeographyFromText('SRID=4326;POINT(-118.286 34.020)') );

INSERT INTO hw3 (name, location) VALUES ('Cinematic Arts', ST_GeographyFromText('SRID=4326;POINT(-118.287 34.023)') );

INSERT INTO hw3 (name, location) VALUES ('VKC Library', ST_GeographyFromText('SRID=4326;POINT(-118.284 34.021)') );

INSERT INTO hw3 (name, location) VALUES ('Gould Library', ST_GeographyFromText('SRID=4326;POINT(-118.284 34.0186)') );

INSERT INTO hw3 (name, location) VALUES ('Galen Center', ST_GeographyFromText('SRID=4326;POINT(-118.279 34.021)') );

SELECT ST_AsText(ST_ConvexHull(ST_Collect(ST_GeographyFromText('SRID=4326;POINT(-118.273 34.027, -118.282 34.022, -118.283 34.0218, -118.291 34.025, -118.292 34.022, -118.290 34.020, -118.286 34.020, -118.287 34.023, -118.284 34.021, -118.284 34.0186, -118.279 34.021)')))) AS myConvexHull from hw3;

SELECT ST_AsText(ST_ConvexHull(ST_Collect(location::geometry))) AS Polygon_1 FROM hw3 WHERE id=1 OR id=2 OR id=3 OR id=9 OR id=10 OR id=11;

SELECT ST_AsText(ST_ConvexHull(ST_Collect(location::geometry))) AS Polygon_2 FROM hw3 WHERE id=4 OR id=5 OR id=6 OR id=7 OR id=8;


SELECT ST_Disjoint((SELECT ST_AsText(ST_ConvexHull(ST_Collect(location::geometry))) AS Polygon_1 FROM hw3 WHERE id=1 OR id=2 OR id=3 OR id=9 OR id=10 OR id=11), (SELECT ST_AsText(ST_ConvexHull(ST_Collect(location::geometry))) AS Polygon_2 FROM hw3 WHERE id=4 OR id=5 OR id=6 OR id=7 OR id=8));

