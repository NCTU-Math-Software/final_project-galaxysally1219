function NpowerNPlus(n)
    % ���@�թw�z�O:(1):(a+b)%c=(a%c+b%c)%c�C(2)(a*b)%c=(a%c*b%c)%c�C
    sum = uint64(0);                       % uint64 �O����C++�� unsigned long long int�C
    sum10 = uint64(0);
    % �H�U�X�{ mod(...,10^10) �O�]���D�إu�ݭn��ܤp���I�e10��C
    % �X�G�C�@�B�� mod �O�]���� overflow�C
    for ii = 1:n
        sum = 1;
        for kk=1:ii
            % EX: (3^3)mod100�A���(3mod100)�����H��N�o��mod�@���A�~�A�h���U�@��(3mod100)�C
            sum = mod(sum*(mod(ii,10^10)),10^10); 
        end
        sum10 = mod((sum10 + sum),10^10) ; % 1^1+2^2+3^3+...+n^n �[�_�ӡC
    end
    fprintf('%010d\n',sum10);              % �i�}�Ҧ��ơA�B���פ���10���e����"0"�C
end