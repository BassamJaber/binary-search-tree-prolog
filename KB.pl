course(cARAB135).
course(cENGC141).
course(cENME120).
course(cMATH141).
course(cPHYS111).
course(cPHYS141).
course(cARAB136).
course(cCOMP142).
course(cENME121).
course(cMATH132).
course(cPHED120).
course(cPHYS112).
course(cPHYS132).
course(cCOMP231).
course(cCOMP233).
course(cENCS234).
course(cENEE331).
course(cMATH234).
course(cMATH331).
course(cCOMP2321).
course(cENCS211).
course(cENCS238).
course(cENEE234).
course(cENGC231).
course(cMATH330).
course(cCOMP333).
course(cCULS331).
course(cENCS311).
course(cENCS338).
course(cENEE213).
course(cENEE236).
course(cENEE334).
course(cBUSA2301).
course(cENCS333).
course(cENCS339).
course(cENCS533).
course(cENEE332).
course(cENEE339).
course(cCULS332).
course(cENCS313).
course(cENCS411).
course(cENCS431).
course(cENCS434).
course(cENCS436).
course(cENCS438).
course(cCOMP433).
course(cENCS412).
course(cENCS413).
course(cENCS437).
course(cENCS531).
course(cENEE411).
course(cENCS401).
course(cENCS514).
course(cENCS520).
course(cENCS521).
course(cENCS532).
course(cENCS515).
course(cENCS530).


grade(cARAB135,34).
grade(cENGC141,24).
grade(cENME120,78).
grade(cMATH141,58).
grade(cPHYS111,64).
grade(cPHYS141,81).
grade(cARAB136,91).
grade(cCOMP142,95).
grade(cENME121,36).
grade(cMATH132,91).
grade(cPHED120,4).
grade(cPHYS112,53).
grade(cPHYS132,82).
grade(cCOMP231,21).
grade(cCOMP233,47).
grade(cENCS234,38).
grade(cENEE331,69).
grade(cMATH234,99).
grade(cMATH331,35).
grade(cCOMP2321,22).
grade(cENCS211,64).
grade(cENCS238,53).
grade(cENEE234,68).
grade(cENGC231,47).
grade(cMATH330,62).
grade(cCOMP333,59).
grade(cCULS331,29).
grade(cENCS311,78).
grade(cENCS338,90).
grade(cENEE213,42).
grade(cENEE236,6).
grade(cENEE334,42).
grade(cBUSA2301,48).
grade(cENCS333,5).
grade(cENCS339,29).
grade(cENCS533,50).
grade(cENEE332,48).
grade(cENEE339,84).
grade(cCULS332,54).
grade(cENCS313,40).
grade(cENCS411,76).
grade(cENCS431,31).
grade(cENCS434,26).
grade(cENCS436,38).
grade(cENCS438,18).
grade(cCOMP433,33).
grade(cENCS412,58).
grade(cENCS413,4).
grade(cENCS437,77).
grade(cENCS531,86).
grade(cENEE411,24).
grade(cENCS401,72).
grade(cENCS514,70).
grade(cENCS520,73).
grade(cENCS521,97).
grade(cENCS532,12).
grade(cENCS515,90).
grade(cENCS530,61).

year(cARAB135,2014).
year(cENGC141,2014).
year(cENME120,2010).
year(cMATH141,2012).
year(cPHYS111,2013).
year(cPHYS141,2015).
year(cARAB136,2012).
year(cCOMP142,2013).
year(cENME121,2013).
year(cMATH132,2014).
year(cPHED120,2012).
year(cPHYS112,2015).
year(cPHYS132,2013).
year(cCOMP231,2011).
year(cCOMP233,2015).
year(cENCS234,2013).
year(cENEE331,2012).
year(cMATH234,2014).
year(cMATH331,2014).
year(cCOMP2321,2015).
year(cENCS211,2014).
year(cENCS238,2010).
year(cENEE234,2014).
year(cENGC231,2014).
year(cMATH330,2013).
year(cCOMP333,2013).
year(cCULS331,2012).
year(cENCS311,2012).
year(cENCS338,2014).
year(cENEE213,2014).
year(cENEE236,2015).
year(cENEE334,2013).
year(cBUSA2301,2014).
year(cENCS333,2013).
year(cENCS339,2011).
year(cENCS533,2010).
year(cENEE332,2012).
year(cENEE339,2010).
year(cCULS332,2014).
year(cENCS313,2013).
year(cENCS411,2013).
year(cENCS431,2010).
year(cENCS434,2010).
year(cENCS436,2010).
year(cENCS438,2014).
year(cCOMP433,2012).
year(cENCS412,2014).
year(cENCS413,2011).
year(cENCS437,2013).
year(cENCS531,2015).
year(cENEE411,2015).
year(cENCS401,2012).
year(cENCS514,2014).
year(cENCS520,2010).
year(cENCS521,2010).
year(cENCS532,2015).
year(cENCS515,2013).
year(cENCS530,2013).


createCourseList(L) :- findall(X,pass(X),L).
createGradeList(L):-findall(X,gradePass(X),L).
gradePass(X):-grade(_,X),X>=60.
pass(X) :- course(X),grade(X,R),R>=60.
getCoursesSorted(L) :- createCourseList(M) , bubblesort(M,L).

%bubble_sort
bubblesort(List,Sorted):- b_sort(List,[],Sorted).
b_sort([],Acc,Acc).
b_sort([H|T],Acc,Sorted):- bubble(H,T,NT,Max),b_sort(NT,[Max|Acc],Sorted).
   
bubble(X,[],[],X).
bubble(X,[Y|T],[Y|NT],Max):- year(X,J) , year(Y,K) ,J > K,bubble(X,T,NT,Max).
bubble(X,[Y|T],[X|NT],Max):- year(X,J) , year(Y,K), J =<K,bubble(Y,T,NT,Max).

%return a list of exams passed within the range [X , Y].

findInRange(_,_,[],[],0).
findInRange(X,Y,[H|T],List,C):- inRange(X,Y,H),findInRange(X,Y,T,M,Checks) , append([H],M,List),C is Checks + 1.
findInRange(X,Y,[H|T],List,C):- not(inRange(X,Y,H)),findInRange(X,Y,T,List,Checks),C is Checks + 1.

findExamsInRange(X,Y,L,C) :- createCourseList(M), findInRange(X,Y,M,L,C).			 
inRange(X,Y,Course) :- course(Course),grade(Course,G) , G >= X , G =< Y , (X =< Y ).


%tree 
add(X,nil,t(X,nil,nil)).
add(X,t(Root,L,R),t(Root,L1,R)) :- grade(X,J) , grade(Root,K),J < K, add(X,L,L1).
add(X,t(Root,L,R),t(Root,L,R1)) :- grade(X,J) , grade(Root,K),J >= K, add(X,R,R1).

construct(L,T) :- construct(L,T,nil).
construct([],T,T).
construct([N|Ns],T,T0) :- add(N,T0,T1), construct(Ns,T,T1).
 	
getCoursesTree(T) :- createCourseList(M) , construct(M,T).
getGradesTree(T):-createGradeList(M) , construct(M,T).	


%search.
find(_,_,nil,[],0).
find(X,Y,t(Root,_,R),List,C):-grade(Root,M),M < X,M < Y,find(X,Y,R,List,Checks),C is Checks + 1 .
find(X,Y,t(Root,L,_),List,C):-grade(Root,M),M > X,M > Y,find(X,Y,L,List,Checks) ,C is Checks + 1 .
find(X,Y,t(Root,_,R),List,C):-grade(Root,M),M == X,M < Y,find(X,Y,R,Temp,Checks),append([Root],Temp,List) , C is Checks +1.
find(X,Y,t(Root,L,R),List,C):-grade(Root,M),M > X,M =< Y,find(X,Y,L,Temp1,Checks1),find(X,Y,R,Temp2,Checks2),append(Temp1,[Root],Temp3),append(Temp3,Temp2,List), C is Checks1 + Checks2 + 1.
findExamsInRangeTree(X,Y,L,Checks):-getCoursesTree(T),find(X,Y,T,L,Checks).
%endcode

