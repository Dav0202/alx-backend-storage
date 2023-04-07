-- 3. Old school band
--  lists all bands with Glam rock style ranked by longitivety
SELECT band_name AS band_name, IFNULL(split, 2023) - IFNULL(formed, 0) AS lifespan
FROM metal_bands
WHERE style LIKE '%Glam rock%'
ORDER BY lifespan DESC;