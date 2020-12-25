function NpowerNPlus(n)
    % Τ舱﹚瞶琌:(1):(a+b)%c=(a%c+b%c)%c(2)(a*b)%c=(a%c*b%c)%c
    sum = uint64(0);                       % uint64 琌摸C++ unsigned long long int
    sum10 = uint64(0);
    % 瞷 mod(...,10^10) 琌肈ヘ惠璶陪ボ计翴玡10
    % 碭–˙常 mod 琌┤ overflow
    for ii = 1:n
        sum = 1;
        for kk=1:ii
            % EX: (3^3)mod100ㄢ(3mod100)Ч碞眔modΩ(3mod100)
            sum = mod(sum*(mod(ii,10^10)),10^10); 
        end
        sum10 = mod((sum10 + sum),10^10) ; % 1^1+2^2+3^3+...+n^n 癬ㄓ
    end
    fprintf('%010d\n',sum10);              % 甶秨┮Τ计ぃ10玡干"0"
end