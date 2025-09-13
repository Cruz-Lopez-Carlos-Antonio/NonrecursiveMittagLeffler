function s = sum_string(a, n)
% sum_string  concatena a{1}+a{2}+...+a{n}
    s = a{1};
    for i = 2:n
        s = [s, '+', a{i}]; %#ok<AGROW>
    end
end
