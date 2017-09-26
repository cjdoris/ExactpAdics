174,0
V,ExactpAdics_Update,2
T,ExactpAdics_Getter_Store,-,0
A,ExactpAdics_Getter_Store,3,lock,profile,updates
S,ExactpAdics_SetProfile,Starts or stops profiling the exact p-adics updates,0,1,0,0,1,0,0,0,0,36,,-38,-38,-38,-38,-38,-38
S,ExactpAdics_ResetProfile,Resets the profiling data for the exact p-adics updates,0,0,0,0,1,0,0,-38,-38,-38,-38,-38,-38
S,ExactpAdics_GetProfileUpdates,"Gets a list of records, one per update, with fields recording the element, the initial precision, the target precision, and the time to perform the update",0,0,0,0,0,0,0,82,-38,-38,-38,-38,-38
S,_apr_isValid,True if n is a valid apr for x,0,2,0,0,0,0,0,0,0,-1,,0,0,-1,,36,-1,-38,-38,-38,-38
S,_apr_isValid,True if n is a valid apr for x,0,2,0,0,0,0,0,0,0,-1,,0,0,FldPadExactElt,,36,-1,-38,-38,-38,-38
S,_apr_isValid,True if n is a valid apr for x,0,2,0,0,0,0,0,0,0,-1,,0,0,RngUPolElt_FldPadExact,,36,-1,-38,-38,-38,-38
S,_apr_isValid,True if n is a valid apr for x,0,2,0,0,0,0,0,0,0,Val_RngUPolElt_FldPad,,0,0,RngUPolElt_FldPadExact,,36,-1,-38,-38,-38,-38
S,_apr_isValid,True if n is a valid apr for x,0,2,0,0,0,0,0,0,0,148,,0,0,RngUPolElt_FldPadExact,,36,-1,-38,-38,-38,-38
S,_apr_isValid,True if n is a valid apr for x,0,2,0,0,0,0,0,0,0,147,,0,0,RngUPolElt_FldPadExact,,36,-1,-38,-38,-38,-38
S,_apr_isValid,True if n is a valid apr for x,0,2,0,0,0,0,0,0,0,212,,0,0,RngUPolElt_FldPadExact,,36,-1,-38,-38,-38,-38
S,_apr_isValid,True if n is a valid apr for x,1,1,1,82,0,148,2,0,0,0,0,0,0,0,82,,0,0,RngUPolElt_FldPadExact,,36,-1,-38,-38,-38,-38
S,_apr_isValid,True if n is a valid apr for x,1,1,1,82,0,147,2,0,0,0,0,0,0,0,82,,0,0,RngUPolElt_FldPadExact,,36,-1,-38,-38,-38,-38
S,_apr_isValid,True if n is a valid apr for x,1,1,1,82,0,212,2,0,0,0,0,0,0,0,82,,0,0,RngUPolElt_FldPadExact,,36,-1,-38,-38,-38,-38
S,_apr_isValid,True if n is a valid apr for x,0,2,0,0,0,0,0,0,0,148,,0,0,RngMPolElt_FldPadExact,,36,-1,-38,-38,-38,-38
S,_apr_isValid,True if n is a valid apr for x,0,2,0,0,0,0,0,0,0,147,,0,0,RngMPolElt_FldPadExact,,36,-1,-38,-38,-38,-38
S,_apr_isValid,True if n is a valid apr for x,0,2,0,0,0,0,0,0,0,212,,0,0,RngMPolElt_FldPadExact,,36,-1,-38,-38,-38,-38
S,_apr_le,True if (normalized) absolute precision a is less than or equal to b,0,3,0,0,0,0,0,0,0,-1,,0,0,-1,,0,0,FldPadExactElt,,36,-38,-38,-38,-38,-38
S,_apr_le,True if (normalized) absolute precision a is less than or equal to b,0,3,0,0,0,0,0,0,0,-1,,0,0,-1,,0,0,RngUPolElt_FldPadExact,,36,-38,-38,-38,-38,-38
S,_apr_le,True if (normalized) absolute precision a is less than or equal to b,0,3,0,0,0,0,0,0,0,-1,,0,0,-1,,0,0,RngMPolElt_FldPadExact,,36,-38,-38,-38,-38,-38
S,_apr_sup,A supremum for the (normalized) absolute precisions a and b,0,3,0,0,0,0,0,0,0,-1,,0,0,-1,,0,0,FldPadExactElt,,-1,-38,-38,-38,-38,-38
S,_apr_sup,A supremum for the (normalized) absolute precisions a and b,0,3,0,0,0,0,0,0,0,-1,,0,0,-1,,0,0,RngUPolElt_FldPadExact,,-1,-38,-38,-38,-38,-38
S,_apr_sup,A supremum for the (normalized) absolute precisions a and b,0,3,0,0,0,0,0,0,0,-1,,0,0,-1,,0,0,RngMPolElt_FldPadExact,,-1,-38,-38,-38,-38,-38
S,_apr_required,The apr required to update x to at least a,0,2,0,0,0,0,0,0,0,-1,,0,0,FldPadExactElt,,-1,-38,-38,-38,-38,-38
S,_apr_required,The apr needed to update x to at least a,0,2,0,0,0,0,0,0,0,-1,,0,0,RngUPolElt_FldPadExact,,-1,-38,-38,-38,-38,-38
S,_apr_required,The apr needed to update x to at least a,0,2,0,0,0,0,0,0,0,-1,,0,0,RngMPolElt_FldPadExact,,-1,-38,-38,-38,-38,-38
T,XPGettr,-,0
A,XPGettr,4,state,getDeps,getValue,explode
S,Evaluate,Evaluates the getter and retuns its value,0,1,0,0,0,0,0,0,0,XPGettr,,-1,-38,-38,-38,-38,-38
S,Print,Prints g,0,1,0,0,1,0,0,0,0,XPGettr,,-38,-38,-38,-38,-38,-38
S,MakeXPGetter,Makes a new XPGettr,0,3,0,0,0,0,0,0,0,-1,,0,0,-1,,0,0,-1,,XPGettr,-38,-38,-38,-38,-38
S,ConstXPGetter,The getter returning X,0,1,0,0,0,0,0,0,0,-1,,XPGettr,-38,-38,-38,-38,-38
S,Apply,Applies f to the output of g,0,2,0,0,0,0,0,0,0,XPGettr,,0,0,-1,,XPGettr,-38,-38,-38,-38,-38
S,Compose,Applies f to the output of g,0,2,0,0,0,0,0,0,0,-1,,0,0,XPGettr,,XPGettr,-38,-38,-38,-38,-38
S,ApplyProcedure,"Applies the procedure f to the output of g, and sets the output to the given value",0,2,0,0,0,0,0,0,0,XPGettr,,0,0,-1,,XPGettr,-38,-38,-38,-38,-38
S,ComposeProcedure,"Applies the procedure f to the output of g, and sets the output to the given value",0,2,0,0,0,0,0,0,0,-1,,0,0,XPGettr,,XPGettr,-38,-38,-38,-38,-38
S,ApplyGetter,The getter which returns the return value of f(return value of g),0,2,0,0,0,0,0,0,0,XPGettr,,0,0,-1,,XPGettr,-38,-38,-38,-38,-38
S,mod,The getter which returns the return value of f(return value of g),0,2,0,0,0,0,0,0,0,-1,,0,0,XPGettr,,XPGettr,-38,-38,-38,-38,-38
S,ApplyGetter,"The getter which returns the return value of f(return value of gs[1], ...)",1,1,1,82,0,XPGettr,2,0,0,0,0,0,0,0,82,,0,0,-1,,XPGettr,-38,-38,-38,-38,-38
S,mod,"The getter which returns the return value of f(return value of gs[1], ...)",1,0,1,82,0,XPGettr,2,0,0,0,0,0,0,0,-1,,0,0,82,,XPGettr,-38,-38,-38,-38,-38
S,ComposeGetter,"The getter which returns the return value of f(return value of gs[1], ...)",0,2,0,0,0,0,0,0,0,-1,,0,0,XPGettr,,XPGettr,-38,-38,-38,-38,-38
S,Flatten,The XPGettr whose value is the list of values of the given gettrs,1,0,1,82,0,XPGettr,1,0,0,0,0,0,0,0,82,,XPGettr,-38,-38,-38,-38,-38
S,&cat,The getter whose value is the sequence of values of gs,1,0,1,82,0,XPGettr,1,0,0,0,0,0,0,0,82,,XPGettr,-38,-38,-38,-38,-38
S,MakeGeneralXPGetter,"Alternative getter where getGetter(~st,~g) gets a getter g which is evaluated to gval before calling getValue(gval,~st,~val)",0,3,0,0,0,0,0,0,0,-1,,0,0,-1,,0,0,-1,,XPGettr,-38,-38,-38,-38,-38
S,/,Modifies g so that it returns the first n values of its return value,0,2,0,0,0,0,0,0,0,148,,0,0,XPGettr,,XPGettr,-38,-38,-38,-38,-38
