-- 3. Old school band
-- lists all bands with Glam rock style ranked by longitivety
SELECT band_name, (IFNULL(split, '2023') - formed) AS lifespan
    FROM metal_bands
    WHERE FIND_IN_SET('Glam rock', IFNULL(style, "")) > 0
    ORDER BY lifespan DESC;
