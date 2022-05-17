#Zwei Matritzen
A = [1 2; 3 4]
B = [5 6; 7 8]
println(A)
println(B)

#Addition funktioniert wie erwartet
C = A + B
println(C)

#Subtraktion funktioniert wie erwartet
D = B - A
println(D)

#Multiplikation 1: Wie erwartet, korrekte Multiplikation zweier Matritzen
E = A * B
println(E)

#Multiplikation 2: Die Multiplikation wird wie eine Addition durchgeführt.
#Jeder Wert von Matrix A wird mit dem Wert an gleicher Stelle in Matrix B multipliziert.
F = A.* B
println(F)

#Division 1: Die Multiplikation mit der Inverse 
G = B / A
println(G)

#Division 2: Inverse Division
H = B \ A
println(H)