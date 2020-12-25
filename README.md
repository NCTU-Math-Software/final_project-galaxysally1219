# 主題 : n^n相加
## The main funtion of my project - NpowerNPlus.m
## 題目 :
已知 1^1+2^2+3^3+...+10^10=10405071317. 找出 1^1+2^2+3^3+...+1000^1000 的小數點前十位數字.

## 答案 :
9110846700

## 程式的使用方式：
這個project的程式是以函數(function)的形式來撰寫, 只要給輸入引數(input argument)一個數值, 就能把正確的答案輸出.

它的使用方式是在MATLAB平台上的command window 輸入：

NpowerNPlus(10)就可得到 1^1+2^2+3^3+...+10^10 的小數點前十位數字.
* input : 10
* output : 0405071317

NpowerNPlus(1000)就可得到 1^1+2^2+3^3+...+1000^1000 的小數點前十位數字.
* input : 1000
* output : 9110846700
 
## 程式的做法：
> 這個project要找出 1^1+2^2+3^3+...+1000^1000 的小數點前十位數字. 當計算一個數 n^n 時, 在連續相乘或相加的過程中會產生很大的數, 但會影響的只有最後面的十位數字, 所以可以利用以下的定理來避免overflow. 而在連續相乘的過程中, 都只取最後十位數字的數, 亦即用 10^10 來做mod, 以避免產生overflow的現象.
```
運用的定理
1. (a + b) % c = ((a % c) + (b % c)) % c
2. (a x b) % c = ((a % c) x (b % c)) % c
```
* Step 1 :

算每個n^n的答案: n 先 mod 10^10,再乘以下一個 n mod 10^10, 以免overflow. 如算3^3時, 先把每個3 mod 10^10, 再相乘在一起, 以免overflow.

* Step 2 :

把算出的每個n^n次方相加再一起, 再mod 10^10, 以免overflow.

* Step 3 :

最後的結果如果是一個不到十個位數的數, 一律在前面補'0', 補到滿足十位數字為止.



