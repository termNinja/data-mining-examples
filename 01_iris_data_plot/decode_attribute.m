function [attr_name] = decode_attribute(attr)
## Returns the string name of given attribute.
## Attribute can be 1, 2, 3 or 4.

    if (attr == 1)
        attr_name = 'Petal width';
    elseif (attr == 2)
        attr_name = 'Petal length';
    elseif (attr == 3)
        attr_name = 'Sepal width';
    elseif (attr == 4)
        attr_name = 'Sepal length';
    else
        printf('Wrong attribute index %d! Must be 1, 2, 3 or 4.\n', attr);
    endif

endfunction
