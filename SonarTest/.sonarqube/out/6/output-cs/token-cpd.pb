‹
Z/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Web/Services/CurrentUser.cs
	namespace 	
	SonarTest
 
. 
Web 
. 
Services  
;  !
public 
class 
CurrentUser 
: 
IUser  
{ 
private 
readonly  
IHttpContextAccessor ) 
_httpContextAccessor* >
;> ?
public

 

CurrentUser

 
(

  
IHttpContextAccessor

 +
httpContextAccessor

, ?
)

? @
{  
_httpContextAccessor 
= 
httpContextAccessor 2
;2 3
} 
public 

string 
? 
Id 
=>  
_httpContextAccessor -
.- .
HttpContext. 9
?9 :
.: ;
User; ?
?? @
.@ A
FindFirstValueA O
(O P

ClaimTypesP Z
.Z [
NameIdentifier[ i
)i j
;j k
} «
M/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Web/Program.cs
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
builder 
. 
Services 
. #
AddKeyVaultIfConfigured (
(( )
builder) 0
.0 1
Configuration1 >
)> ?
;? @
builder 
. 
Services 
. "
AddApplicationServices '
(' (
)( )
;) *
builder		 
.		 
Services		 
.		 %
AddInfrastructureServices		 *
(		* +
builder		+ 2
.		2 3
Configuration		3 @
)		@ A
;		A B
builder

 
.

 
Services

 
.

 
AddWebServices

 
(

  
)

  !
;

! "
var 
app 
= 	
builder
 
. 
Build 
( 
) 
; 
if 
( 
app 
. 
Environment 
. 
IsDevelopment !
(! "
)" #
)# $
{ 
await 	
app
 
. #
InitialiseDatabaseAsync %
(% &
)& '
;' (
} 
else 
{ 
app 
. 
UseHsts 
( 
) 
; 
} 
app 
. 
UseHealthChecks 
( 
$str 
) 
; 
app 
. 
UseHttpsRedirection 
( 
) 
; 
app 
. 
UseStaticFiles 
( 
) 
; 
app 
. 
UseSwaggerUi 
( 
settings 
=> 
{ 
settings 
. 
Path 
= 
$str 
; 
settings   
.   
DocumentPath   
=   
$str   5
;  5 6
}!! 
)!! 
;!! 
app## 
.## 
MapControllerRoute## 
(## 
name$$ 
:$$ 	
$str$$
 
,$$ 
pattern%% 
:%% 
$str%% 0
)%%0 1
;%%1 2
app'' 
.'' 
MapRazorPages'' 
('' 
)'' 
;'' 
app)) 
.)) 
MapFallbackToFile)) 
()) 
$str)) "
)))" #
;))# $
app++ 
.++ 
UseExceptionHandler++ 
(++ 
options++ 
=>++  "
{++# $
}++% &
)++& '
;++' (
app-- 
.-- 
Map-- 
(-- 
$str-- 
,-- 
(-- 
)-- 
=>-- 
Results-- 
.-- 
Redirect-- #
(--# $
$str--$ *
)--* +
)--+ ,
;--, -
app// 
.// 
MapEndpoints// 
(// 
)// 
;// 
app11 
.11 
Run11 
(11 
)11 	
;11	 

public33 
partial33 
class33 
Program33 
{44 
}55 ∫
X/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Web/Pages/Error.cshtml.cs
	namespace 	
	SonarTest
 
. 
Web 
. 
Pages 
; 
[ 
ResponseCache 
( 
Duration 
= 
$num 
, 
Location %
=& '!
ResponseCacheLocation( =
.= >
None> B
,B C
NoStoreD K
=L M
trueN R
)R S
]S T
public 
class 

ErrorModel 
: 
	PageModel #
{		 
private

 
readonly

 
ILogger

 
<

 

ErrorModel

 '
>

' (
_logger

) 0
;

0 1
public 


ErrorModel 
( 
ILogger 
< 

ErrorModel (
>( )
logger* 0
)0 1
{ 
_logger 
= 
logger 
; 
} 
public 

string 
? 
	RequestId 
{ 
get "
;" #
set$ '
;' (
}) *
public 

bool 
ShowRequestId 
=>  
!! "
string" (
.( )
IsNullOrEmpty) 6
(6 7
	RequestId7 @
)@ A
;A B
public 

void 
OnGet 
( 
) 
{ 
	RequestId 
= 
Activity 
. 
Current $
?$ %
.% &
Id& (
??) +
HttpContext, 7
.7 8
TraceIdentifier8 G
;G H
} 
} û"
t/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Web/Infrastructure/IEndpointRouteBuilderExtensions.cs
	namespace 	
	SonarTest
 
. 
Web 
. 
Infrastructure &
;& '
public 
static 
class +
IEndpointRouteBuilderExtensions 3
{ 
public 

static !
IEndpointRouteBuilder '
MapGet( .
(. /
this/ 3!
IEndpointRouteBuilder4 I
builderJ Q
,Q R
DelegateS [
handler\ c
,c d
[ 	
StringSyntax	 
( 
$str 
) 
] 
string  &
pattern' .
=/ 0
$str1 3
)3 4
{		 
Guard

 
.

 
Against

 
.

 
AnonymousMethod

 %
(

% &
handler

& -
)

- .
;

. /
builder 
. 
MapGet 
( 
pattern 
, 
handler  '
)' (
. 
WithName 
( 
handler 
. 
Method $
.$ %
Name% )
)) *
;* +
return 
builder 
; 
} 
public 

static !
IEndpointRouteBuilder '
MapPost( /
(/ 0
this0 4!
IEndpointRouteBuilder5 J
builderK R
,R S
DelegateT \
handler] d
,d e
[ 	
StringSyntax	 
( 
$str 
) 
] 
string  &
pattern' .
=/ 0
$str1 3
)3 4
{ 
Guard 
. 
Against 
. 
AnonymousMethod %
(% &
handler& -
)- .
;. /
builder 
. 
MapPost 
( 
pattern 
,  
handler! (
)( )
. 
WithName 
( 
handler 
. 
Method $
.$ %
Name% )
)) *
;* +
return 
builder 
; 
} 
public 

static !
IEndpointRouteBuilder '
MapPut( .
(. /
this/ 3!
IEndpointRouteBuilder4 I
builderJ Q
,Q R
DelegateS [
handler\ c
,c d
[ 	
StringSyntax	 
( 
$str 
) 
] 
string  &
pattern' .
). /
{ 
Guard   
.   
Against   
.   
AnonymousMethod   %
(  % &
handler  & -
)  - .
;  . /
builder"" 
."" 
MapPut"" 
("" 
pattern"" 
,"" 
handler""  '
)""' (
.## 
WithName## 
(## 
handler## 
.## 
Method## $
.##$ %
Name##% )
)##) *
;##* +
return%% 
builder%% 
;%% 
}&& 
public(( 

static(( !
IEndpointRouteBuilder(( '
	MapDelete((( 1
(((1 2
this((2 6!
IEndpointRouteBuilder((7 L
builder((M T
,((T U
Delegate((V ^
handler((_ f
,((f g
[)) 	
StringSyntax))	 
()) 
$str)) 
))) 
])) 
string))  &
pattern))' .
))). /
{** 
Guard++ 
.++ 
Against++ 
.++ 
AnonymousMethod++ %
(++% &
handler++& -
)++- .
;++. /
builder-- 
.-- 
	MapDelete-- 
(-- 
pattern-- !
,--! "
handler--# *
)--* +
... 
WithName.. 
(.. 
handler.. 
... 
Method.. $
...$ %
Name..% )
)..) *
;..* +
return00 
builder00 
;00 
}11 
}22 î
m/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Web/Infrastructure/WebApplicationExtensions.cs
	namespace 	
	SonarTest
 
. 
Web 
. 
Infrastructure &
;& '
public 
static 
class $
WebApplicationExtensions ,
{ 
public 

static 
RouteGroupBuilder #
MapGroup$ ,
(, -
this- 1
WebApplication2 @
appA D
,D E
EndpointGroupBaseF W
groupX ]
)] ^
{ 
var		 
	groupName		 
=		 
group		 
.		 
GetType		 %
(		% &
)		& '
.		' (
Name		( ,
;		, -
return 
app 
. 
MapGroup 
( 
$" 
$str 
{ 
	groupName '
}' (
"( )
)) *
. 
WithGroupName 
( 
	groupName $
)$ %
. 
WithTags 
( 
	groupName 
)  
. 
WithOpenApi 
( 
) 
; 
} 
public 

static 
WebApplication  
MapEndpoints! -
(- .
this. 2
WebApplication3 A
appB E
)E F
{ 
var 
endpointGroupType 
= 
typeof  &
(& '
EndpointGroupBase' 8
)8 9
;9 :
var 
assembly 
= 
Assembly 
.   
GetExecutingAssembly  4
(4 5
)5 6
;6 7
var 
endpointGroupTypes 
=  
assembly! )
.) *
GetExportedTypes* :
(: ;
); <
. 
Where 
( 
t 
=> 
t 
. 
IsSubclassOf &
(& '
endpointGroupType' 8
)8 9
)9 :
;: ;
foreach 
( 
var 
type 
in 
endpointGroupTypes /
)/ 0
{ 	
if 
( 
	Activator 
. 
CreateInstance (
(( )
type) -
)- .
is/ 1
EndpointGroupBase2 C
instanceD L
)L M
{ 
instance 
. 
Map 
( 
app  
)  !
;! "
}   
}!! 	
return## 
app## 
;## 
}$$ 
}%% è
i/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Web/Infrastructure/MethodInfoExtensions.cs
	namespace 	
	SonarTest
 
. 
Web 
. 
Infrastructure &
;& '
public 
static 
class  
MethodInfoExtensions (
{ 
public 

static 
bool 
IsAnonymous "
(" #
this# '

MethodInfo( 2
method3 9
)9 :
{ 
var		 
invalidChars		 
=		 
new		 
[		 
]		  
{		! "
$char		# &
,		& '
$char		( +
}		, -
;		- .
return

 
method

 
.

 
Name

 
.

 
Any

 
(

 
invalidChars

 +
.

+ ,
Contains

, 4
)

4 5
;

5 6
} 
public 

static 
void 
AnonymousMethod &
(& '
this' +
IGuardClause, 8
guardClause9 D
,D E
DelegateF N
inputO T
)T U
{ 
if 

( 
input 
. 
Method 
. 
IsAnonymous $
($ %
)% &
)& '
throw 
new 
ArgumentException '
(' (
$str( l
)l m
;m n
} 
} â
f/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Web/Infrastructure/EndpointGroupBase.cs
	namespace 	
	SonarTest
 
. 
Web 
. 
Infrastructure &
;& '
public 
abstract 
class 
EndpointGroupBase '
{ 
public 

abstract 
void 
Map 
( 
WebApplication +
app, /
)/ 0
;0 1
} ≈7
k/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Web/Infrastructure/CustomExceptionHandler.cs
	namespace 	
	SonarTest
 
. 
Web 
. 
Infrastructure &
;& '
public 
class "
CustomExceptionHandler #
:$ %
IExceptionHandler& 7
{ 
private		 
readonly		 

Dictionary		 
<		  
Type		  $
,		$ %
Func		& *
<		* +
HttpContext		+ 6
,		6 7
	Exception		8 A
,		A B
Task		C G
>		G H
>		H I
_exceptionHandlers		J \
;		\ ]
public 
"
CustomExceptionHandler !
(! "
)" #
{ 
_exceptionHandlers 
= 
new  
(  !
)! "
{ 	
{ 
typeof 
( 
ValidationException (
)( )
,) *%
HandleValidationException+ D
}E F
,F G
{ 
typeof 
( 
NotFoundException &
)& '
,' (#
HandleNotFoundException) @
}A B
,B C
{ 
typeof 
( '
UnauthorizedAccessException 0
)0 1
,1 2-
!HandleUnauthorizedAccessException3 T
}U V
,V W
{ 
typeof 
( $
ForbiddenAccessException -
)- .
,. /*
HandleForbiddenAccessException0 N
}O P
,P Q
} 	
;	 

} 
public 

async 
	ValueTask 
< 
bool 
>  
TryHandleAsync! /
(/ 0
HttpContext0 ;
httpContext< G
,G H
	ExceptionI R
	exceptionS \
,\ ]
CancellationToken 
cancellationToken +
)+ ,
{ 
var 
exceptionType 
= 
	exception %
.% &
GetType& -
(- .
). /
;/ 0
if 

( 
_exceptionHandlers 
. 
ContainsKey *
(* +
exceptionType+ 8
)8 9
)9 :
{ 	
await 
_exceptionHandlers $
[$ %
exceptionType% 2
]2 3
.3 4
Invoke4 :
(: ;
httpContext; F
,F G
	exceptionH Q
)Q R
;R S
return 
true 
; 
}   	
return"" 
false"" 
;"" 
}## 
private%% 
async%% 
Task%% %
HandleValidationException%% 0
(%%0 1
HttpContext%%1 <
httpContext%%= H
,%%H I
	Exception%%J S
ex%%T V
)%%V W
{&& 
var'' 
	exception'' 
='' 
('' 
ValidationException'' ,
)'', -
ex''- /
;''/ 0
httpContext)) 
.)) 
Response)) 
.)) 

StatusCode)) '
=))( )
StatusCodes))* 5
.))5 6
Status400BadRequest))6 I
;))I J
await++ 
httpContext++ 
.++ 
Response++ "
.++" #
WriteAsJsonAsync++# 3
(++3 4
new++4 7$
ValidationProblemDetails++8 P
(++P Q
	exception++Q Z
.++Z [
Errors++[ a
)++a b
{,, 	
Status-- 
=-- 
StatusCodes--  
.--  !
Status400BadRequest--! 4
,--4 5
Type.. 
=.. 
$str.. F
}// 	
)//	 

;//
 
}00 
private22 
async22 
Task22 #
HandleNotFoundException22 .
(22. /
HttpContext22/ :
httpContext22; F
,22F G
	Exception22H Q
ex22R T
)22T U
{33 
var44 
	exception44 
=44 
(44 
NotFoundException44 *
)44* +
ex44+ -
;44- .
httpContext66 
.66 
Response66 
.66 

StatusCode66 '
=66( )
StatusCodes66* 5
.665 6
Status404NotFound666 G
;66G H
await88 
httpContext88 
.88 
Response88 "
.88" #
WriteAsJsonAsync88# 3
(883 4
new884 7
ProblemDetails888 F
(88F G
)88G H
{99 	
Status:: 
=:: 
StatusCodes::  
.::  !
Status404NotFound::! 2
,::2 3
Type;; 
=;; 
$str;; F
,;;F G
Title<< 
=<< 
$str<< ;
,<<; <
Detail== 
=== 
	exception== 
.== 
Message== &
}>> 	
)>>	 

;>>
 
}?? 
privateAA 
asyncAA 
TaskAA -
!HandleUnauthorizedAccessExceptionAA 8
(AA8 9
HttpContextAA9 D
httpContextAAE P
,AAP Q
	ExceptionAAR [
exAA\ ^
)AA^ _
{BB 
httpContextCC 
.CC 
ResponseCC 
.CC 

StatusCodeCC '
=CC( )
StatusCodesCC* 5
.CC5 6!
Status401UnauthorizedCC6 K
;CCK L
awaitEE 
httpContextEE 
.EE 
ResponseEE "
.EE" #
WriteAsJsonAsyncEE# 3
(EE3 4
newEE4 7
ProblemDetailsEE8 F
{FF 	
StatusGG 
=GG 
StatusCodesGG  
.GG  !!
Status401UnauthorizedGG! 6
,GG6 7
TitleHH 
=HH 
$strHH "
,HH" #
TypeII 
=II 
$strII D
}JJ 	
)JJ	 

;JJ
 
}KK 
privateMM 
asyncMM 
TaskMM *
HandleForbiddenAccessExceptionMM 5
(MM5 6
HttpContextMM6 A
httpContextMMB M
,MMM N
	ExceptionMMO X
exMMY [
)MM[ \
{NN 
httpContextOO 
.OO 
ResponseOO 
.OO 

StatusCodeOO '
=OO( )
StatusCodesOO* 5
.OO5 6
Status403ForbiddenOO6 H
;OOH I
awaitQQ 
httpContextQQ 
.QQ 
ResponseQQ "
.QQ" #
WriteAsJsonAsyncQQ# 3
(QQ3 4
newQQ4 7
ProblemDetailsQQ8 F
{RR 	
StatusSS 
=SS 
StatusCodesSS  
.SS  !
Status403ForbiddenSS! 3
,SS3 4
TitleTT 
=TT 
$strTT 
,TT  
TypeUU 
=UU 
$strUU F
}VV 	
)VV	 

;VV
 
}WW 
}XX T
R/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Web/GlobalUsings.csŸ

`/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Web/Endpoints/WeatherForecasts.cs
	namespace 	
	SonarTest
 
. 
Web 
. 
	Endpoints !
;! "
public 
class 
WeatherForecasts 
: 
EndpointGroupBase  1
{ 
public 

override 
void 
Map 
( 
WebApplication +
app, /
)/ 0
{ 
app		 
.		 
MapGroup		 
(		 
this		 
)		 
.

  
RequireAuthorization

 !
(

! "
)

" #
. 
MapGet 
( 
GetWeatherForecasts '
)' (
;( )
} 
public 

async 
Task 
< 
IEnumerable !
<! "
WeatherForecast" 1
>1 2
>2 3
GetWeatherForecasts4 G
(G H
ISenderH O
senderP V
)V W
{ 
return 
await 
sender 
. 
Send  
(  !
new! $$
GetWeatherForecastsQuery% =
(= >
)> ?
)? @
;@ A
} 
} á
U/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Web/Endpoints/Users.cs
	namespace 	
	SonarTest
 
. 
Web 
. 
	Endpoints !
;! "
public 
class 
Users 
: 
EndpointGroupBase &
{ 
public 

override 
void 
Map 
( 
WebApplication +
app, /
)/ 0
{ 
app		 
.		 
MapGroup		 
(		 
this		 
)		 
.

 
MapIdentityApi

 
<

 
ApplicationUser

 +
>

+ ,
(

, -
)

- .
;

. /
} 
} ´
Y/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Web/Endpoints/TodoLists.cs
	namespace 	
	SonarTest
 
. 
Web 
. 
	Endpoints !
;! "
public 
class 
	TodoLists 
: 
EndpointGroupBase *
{		 
public

 

override

 
void

 
Map

 
(

 
WebApplication

 +
app

, /
)

/ 0
{ 
app 
. 
MapGroup 
( 
this 
) 
.  
RequireAuthorization !
(! "
)" #
. 
MapGet 
( 
GetTodoLists  
)  !
. 
MapPost 
( 
CreateTodoList #
)# $
. 
MapPut 
( 
UpdateTodoList "
," #
$str$ *
)* +
. 
	MapDelete 
( 
DeleteTodoList %
,% &
$str' -
)- .
;. /
} 
public 

Task 
< 
TodosVm 
> 
GetTodoLists %
(% &
ISender& -
sender. 4
)4 5
{ 
return 
sender 
. 
Send 
( 
new 
GetTodosQuery ,
(, -
)- .
). /
;/ 0
} 
public 

Task 
< 
int 
> 
CreateTodoList #
(# $
ISender$ +
sender, 2
,2 3!
CreateTodoListCommand4 I
commandJ Q
)Q R
{ 
return 
sender 
. 
Send 
( 
command "
)" #
;# $
} 
public 

async 
Task 
< 
IResult 
> 
UpdateTodoList -
(- .
ISender. 5
sender6 <
,< =
int> A
idB D
,D E!
UpdateTodoListCommandF [
command\ c
)c d
{ 
if   

(   
id   
!=   
command   
.   
Id   
)   
return   $
Results  % ,
.  , -

BadRequest  - 7
(  7 8
)  8 9
;  9 :
await!! 
sender!! 
.!! 
Send!! 
(!! 
command!! !
)!!! "
;!!" #
return"" 
Results"" 
."" 
	NoContent""  
(""  !
)""! "
;""" #
}## 
public%% 

async%% 
Task%% 
<%% 
IResult%% 
>%% 
DeleteTodoList%% -
(%%- .
ISender%%. 5
sender%%6 <
,%%< =
int%%> A
id%%B D
)%%D E
{&& 
await'' 
sender'' 
.'' 
Send'' 
('' 
new'' !
DeleteTodoListCommand'' 3
(''3 4
id''4 6
)''6 7
)''7 8
;''8 9
return(( 
Results(( 
.(( 
	NoContent((  
(((  !
)((! "
;((" #
})) 
}** “$
Y/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Web/Endpoints/TodoItems.cs
	namespace 	
	SonarTest
 
. 
Web 
. 
	Endpoints !
;! "
public

 
class

 
	TodoItems

 
:

 
EndpointGroupBase

 *
{ 
public 

override 
void 
Map 
( 
WebApplication +
app, /
)/ 0
{ 
app 
. 
MapGroup 
( 
this 
) 
.  
RequireAuthorization !
(! "
)" #
. 
MapGet 
( &
GetTodoItemsWithPagination .
). /
. 
MapPost 
( 
CreateTodoItem #
)# $
. 
MapPut 
( 
UpdateTodoItem "
," #
$str$ *
)* +
. 
MapPut 
(  
UpdateTodoItemDetail (
,( )
$str* =
)= >
. 
	MapDelete 
( 
DeleteTodoItem %
,% &
$str' -
)- .
;. /
} 
public 

Task 
< 
PaginatedList 
< 
TodoItemBriefDto .
>. /
>/ 0&
GetTodoItemsWithPagination1 K
(K L
ISenderL S
senderT Z
,Z [
[ 	
AsParameters	 
] +
GetTodoItemsWithPaginationQuery 6
query7 <
)< =
{ 
return 
sender 
. 
Send 
( 
query  
)  !
;! "
} 
public 

Task 
< 
int 
> 
CreateTodoItem #
(# $
ISender$ +
sender, 2
,2 3!
CreateTodoItemCommand4 I
commandJ Q
)Q R
{ 
return 
sender 
. 
Send 
( 
command "
)" #
;# $
}   
public"" 

async"" 
Task"" 
<"" 
IResult"" 
>"" 
UpdateTodoItem"" -
(""- .
ISender"". 5
sender""6 <
,""< =
int""> A
id""B D
,""D E!
UpdateTodoItemCommand""F [
command""\ c
)""c d
{## 
if$$ 

($$ 
id$$ 
!=$$ 
command$$ 
.$$ 
Id$$ 
)$$ 
return$$ $
Results$$% ,
.$$, -

BadRequest$$- 7
($$7 8
)$$8 9
;$$9 :
await%% 
sender%% 
.%% 
Send%% 
(%% 
command%% !
)%%! "
;%%" #
return&& 
Results&& 
.&& 
	NoContent&&  
(&&  !
)&&! "
;&&" #
}'' 
public)) 

async)) 
Task)) 
<)) 
IResult)) 
>))  
UpdateTodoItemDetail)) 3
())3 4
ISender))4 ;
sender))< B
,))B C
int))D G
id))H J
,))J K'
UpdateTodoItemDetailCommand))L g
command))h o
)))o p
{** 
if++ 

(++ 
id++ 
!=++ 
command++ 
.++ 
Id++ 
)++ 
return++ $
Results++% ,
.++, -

BadRequest++- 7
(++7 8
)++8 9
;++9 :
await,, 
sender,, 
.,, 
Send,, 
(,, 
command,, !
),,! "
;,," #
return-- 
Results-- 
.-- 
	NoContent--  
(--  !
)--! "
;--" #
}.. 
public00 

async00 
Task00 
<00 
IResult00 
>00 
DeleteTodoItem00 -
(00- .
ISender00. 5
sender006 <
,00< =
int00> A
id00B D
)00D E
{11 
await22 
sender22 
.22 
Send22 
(22 
new22 !
DeleteTodoItemCommand22 3
(223 4
id224 6
)226 7
)227 8
;228 9
return33 
Results33 
.33 
	NoContent33  
(33  !
)33! "
;33" #
}44 
}55 Ù"
Y/Users/re/Documents/projects/sonartest/SonarTest/SonarTest/src/Web/DependencyInjection.cs
	namespace		 	
	Microsoft		
 
.		 

Extensions		 
.		 
DependencyInjection		 2
;		2 3
public 
static 
class 
DependencyInjection '
{ 
public 

static 
IServiceCollection $
AddWebServices% 3
(3 4
this4 8
IServiceCollection9 K
servicesL T
)T U
{ 
services 
. 3
'AddDatabaseDeveloperPageExceptionFilter 8
(8 9
)9 :
;: ;
services 
. 
	AddScoped 
< 
IUser  
,  !
CurrentUser" -
>- .
(. /
)/ 0
;0 1
services 
. "
AddHttpContextAccessor '
(' (
)( )
;) *
services 
. 
AddHealthChecks  
(  !
)! "
. 
AddDbContextCheck 
<  
ApplicationDbContext 3
>3 4
(4 5
)5 6
;6 7
services 
. 
AddExceptionHandler $
<$ %"
CustomExceptionHandler% ;
>; <
(< =
)= >
;> ?
services 
. 
AddRazorPages 
( 
)  
;  !
services 
. 
	Configure 
< 
ApiBehaviorOptions -
>- .
(. /
options/ 6
=>7 9
options 
. +
SuppressModelStateInvalidFilter 3
=4 5
true6 :
): ;
;; <
services   
.   #
AddEndpointsApiExplorer   (
(  ( )
)  ) *
;  * +
services"" 
."" 
AddOpenApiDocument"" #
(""# $
(""$ %
	configure""% .
,"". /
sp""0 2
)""2 3
=>""4 6
{## 	
	configure$$ 
.$$ 
Title$$ 
=$$ 
$str$$ -
;$$- .
	configure'' 
.'' 
AddSecurity'' !
(''! "
$str''" '
,''' (

Enumerable'') 3
.''3 4
Empty''4 9
<''9 :
string'': @
>''@ A
(''A B
)''B C
,''C D
new''E H!
OpenApiSecurityScheme''I ^
{(( 
Type)) 
=)) %
OpenApiSecuritySchemeType)) 0
.))0 1
ApiKey))1 7
,))7 8
Name** 
=** 
$str** &
,**& '
In++ 
=++ )
OpenApiSecurityApiKeyLocation++ 2
.++2 3
Header++3 9
,++9 :
Description,, 
=,, 
$str,, O
}-- 
)-- 
;-- 
	configure// 
.// 
OperationProcessors// )
.//) *
Add//* -
(//- .
new//. 15
)AspNetCoreOperationSecurityScopeProcessor//2 [
(//[ \
$str//\ a
)//a b
)//b c
;//c d
}00 	
)00	 

;00
 
return22 
services22 
;22 
}33 
public55 

static55 
IServiceCollection55 $#
AddKeyVaultIfConfigured55% <
(55< =
this55= A
IServiceCollection55B T
services55U ]
,55] ^ 
ConfigurationManager66 
configuration66 *
)66* +
{77 
var88 
keyVaultUri88 
=88 
configuration88 '
[88' (
$str88( 5
]885 6
;886 7
if99 

(99 
!99 
string99 
.99 
IsNullOrWhiteSpace99 &
(99& '
keyVaultUri99' 2
)992 3
)993 4
{:: 	
configuration;; 
.;; 
AddAzureKeyVault;; *
(;;* +
new<< 
Uri<< 
(<< 
keyVaultUri<< #
)<<# $
,<<$ %
new== "
DefaultAzureCredential== *
(==* +
)==+ ,
)==, -
;==- .
}>> 	
return@@ 
services@@ 
;@@ 
}AA 
}BB 