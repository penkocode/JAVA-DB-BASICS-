SELECT peak_name,river_name,  concat(lower(peak_name), LOWER(RIGHT(river_name, length(river_name) - 1))) AS mix FROM peaks,rivers WHERE right(peak_name,1) = left(river_name,1) ORDER BY mix ASC;
