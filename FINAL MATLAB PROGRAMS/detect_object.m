function detected = detect_object(template, search)

[frames1, descs1] = sift(template);
[frames2, descs2] = sift(search);

matches = match_nn_ratio(descs1, descs2);
matches = threshold_matches(matches, 0.55);

detected = false;
if length(matches) > 8
    detected = true;
end