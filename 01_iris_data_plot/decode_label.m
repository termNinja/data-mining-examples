function [decoded_label] = decode_label(label)
## Returns the name of given label.
## 0 for Setosa, 1 for Virginica and 2 for Versicolor.

    if (label == 0)
        decoded_label = 'Setosa';
    elseif (label == 1)
        decoded_label = 'Virginica';
    elseif (label == 2)
        decoded_label = 'Versicolor';
    else
        printf('Wrong class %d given! Expected 0, 1 or 3.\n', label);
    endif

endfunction
