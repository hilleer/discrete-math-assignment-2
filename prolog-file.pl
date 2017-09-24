
/** facts **/

student(emil).
student(anders).
student(frederik).
student(daniel).
student(bobby).
student(liam).
student(janni).
student(august).

class(software_danish).
class(software_international).
class(finance).

subject(lsd).
subject(business_intelligence).
subject(system_integration).
subject(descrete_math).

elective(business_intelligence).
elective(descrete_math).

classroom(lsd, 2.01).
classroom(business_intelligence, 2.02).
classroom(system_integration, 3.03).
classroom(descrete_math, 3.64).

takes(emil, lsd).
takes(emil, system_integration).
takes(emil, descrete_math).
takes(anders, lsd).
takes(anders, system_integration).
takes(anders, descrete_math).
takes(frederik, lsd).
takes(frederik, system_integration).
takes(frederik, descrete_math).
takes(daniel, lsd).
takes(daniel, system_integration).
takes(daniel, descrete_math).
takes(bobby, lsd).
takes(bobby, system_integration).
takes(bobby, business_intelligence).
takes(liam, lsd).
takes(liam, system_integration).
takes(liam, descrete_math).
takes(august, lsd).
takes(august, system_integration).
takes(august, business_intelligence).

member(emil, software_danish).
member(anders, software_danish).
member(frederik, software_danish).
member(daniel, software_danish).
member(bobby, software_international).
member(liam, software_international).
member(august, software_international).
member(janni, finance).

meets(software_danish, mornings).
meets(software_international, afternoons).

scheduled(lsd, monday).
scheduled(business_intelligence, tuesday).
scheduled(system_integration, thursday).
scheduled(descrete_math, friday).

/** rules **/

classmates(StudentA, StudentB) :-
	member(StudentA, software_danish),
	member(StudentB, software_danish).

brilliant(Student) :-
	takes(Student, descrete_math).

international(Student) :-
	member(Student, software_international).


/** Queries & Questions **/

takes(emil, Subject). /** returns lsd, system_integration, descrete_math. A list of all the subjects for the given student (in this case 'emil') **/
takes(Student, business_intelligence). /** returns bobby, august. A list of all the students signed up for the subject 'business_intelligence' **/
classmates(anders, frederik). /** returns true. Because anders and frederik are indeed classmates **/
classmates(frederik, august). /** returns false **/
scheduled(descrete_math, Day). /** returns friday **/












