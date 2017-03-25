function plot_data(i, j, iname, jname, X, y)
## Plots attribute i on x axis, attributed y on y axis
## and labels points for all classes in dataset (X - attributes, y - labels).

    # Get the indexes of instances from 3 iris classes.
    c1 = find(y == 0);
    c2 = find(y == 1);
    c3 = find(y == 2);

    msize = 10;
    h = figure;

    # Plot class 1
    plot(X(c1, i), X(c1, j), "r*", "markersize", msize);
    hold on;

    # Plot class 2
    plot(X(c2, i), X(c2, j), "b+");

    # Plot class 3
    plot(X(c3, i), X(c3, j), "gx");

    legend(decode_label(0), decode_label(1), decode_label(2));
    xlabel(iname);
    ylabel(jname);

    # Save output plot
    fpath = sprintf("plots/fig_%d_%d.pdf", i, j);
    saveas(h, fpath);
    fpath = sprintf("plots/fig_%d_%d.png", i, j);
    saveas(h, fpath);

    hold off;

endfunction
