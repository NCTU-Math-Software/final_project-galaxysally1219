# Project 16
# The main funtion of my project - Project16.m
# 題目 :
已知 1^1+2^2+3^3+...+10^10=10405071317. 找出 1^1+2^2+3^3+...+1000^1000 的小數點前十位數字.

# 我的程式內容:
讓使用者輸入一個數 n, 然後輸出 1^1+2^2+3^3+...+n^n 的小數點前十位數字.

(EX: 題目問 1^1+2^2+3^3+...+1000^1000 的小數點前十位數字，n就輸入1000)

而輸出的數如果不及10個數字一律在前方補0.

# 作法 :
整個程式的做法都圍繞著一組定理: (1): (a+b)%c=(a%c + b%c)%c。 (2): (axb)%c=(a%c x b%c)%c.

而每個步驟幾乎都要先mod(...,10^10)，因為怕overflowed 而且題目也只需要小數點前十位數字.

詳情請看程式 Project16.m 裡的註解.


