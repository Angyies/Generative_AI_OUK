impl Binary_gap.start {
    #converts the input number N to binary 
    binary = str(bin(self.N))[2:];
    #Removing trailing zeros and finding binary gaps
    stripped_bin = binary.strip('0');
    gaps = stripped_bin.split('1');
    #Iterating through the segments to find the maximum gap
    self. max_gap = 0;
    for gap in gaps {
        gap_length = len(gap);
        if gap_length > self.max_gap {
            self.max_gap = gap_length;
        }
    }
    #Output the maximum binary gap found 
    std.out(f"Binary representation of {self.N} is {binary}");
    std.out(f"Maximum binary gap for {self.N} is {self.max_gap}");
    
    #Response for API usage
    return{
        "number": self.N,
        "binary_representation": binary,
        "max_binary_gap": self.max_gap
    };
}
