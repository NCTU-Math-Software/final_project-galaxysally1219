function Project16(n)
    % 有一組定理是:(1):(a+b)%c=(a%c+b%c)%c。(2)(a*b)%c=(a%c*b%c)%c。
    sum = uint64(0);                       % uint64 是類似C++的 unsigned long long int。
    sum10 = uint64(0);
    % 以下出現 mod(...,10^10) 是因為題目只需要顯示小數點前10位。
    % 幾乎每一步都 mod 是因為怕 overflow。
    for ii = 1:n
        sum = 1;
        for kk=1:ii
            % EX: (3^3)mod100，兩個(3mod100)乘完以後就得先mod一次，才在去乘下一個(3mod100)。
            sum = mod(sum*(mod(ii,10^10)),10^10); 
        end
        sum10 = mod((sum10 + sum),10^10) ; % 1^1+2^2+3^3+...+n^n 加起來。
    end
    sprintf('%010d',sum10)                 % 展開所有數，且長度不到10的前面補"0"。
end