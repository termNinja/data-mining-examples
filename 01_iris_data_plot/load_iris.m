# Loads the Iris dataset.
printf("Loading fisheriris.txt...\n");
load fisheriris.txt
printf("Loaded!\n");

% Split into features and labels.
printf("Splitting dataset into features and labels.\n");
y = fisheriris(:, 1);
X = fisheriris(:, 2:5);
printf("Dataset size: %d\n", length(X));
