walker Binary_gap {
    has N: int;
    has max_gap: int = 0;

    can start with root entry;
}

node root {}

with entry: __main__ {
    root spawn Binary_gap(1104);
    root spawn Binary_gap(32);
    root spawn Binary_gap(20);
}
