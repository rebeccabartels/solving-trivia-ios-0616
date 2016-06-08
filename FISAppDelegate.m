//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
   return YES;
   
}



- (NSString *)solveTrivia{ //method declaration

NSString *result; //variable declaration
    
    
NSArray *states = [[NSArray alloc] init];

    
// variable = //value

                   
                   
                      //// how can I get every value?/key? methods return arrays? The Answer is: South Dakota according to the Unit Test FISAppDelegate.m draft
                     //// Make 2 Arrays: 1 for States, one for Capitals.
                            /// Compare corresponding state to capital
                                            /// if letters in state are present in capitals, (BOOL?) then the answer is WRONG. If not, it is right. ***
                                             
    
NSDictionary *statesAndCapitals = @{@"ALABAMA" : @"MONTGOMERY",   //rewrite in reglar case, account for caps/spaces/periods
                                        @"ALASKA" : @"JUNEAU",
                                        @"ARIZONA" : @"PHOENIX",
                                        @"ARKANSAS" : @"LITTLE ROCK",
                                        @"CALIFORNIA" : @"SACRAMENTO",
                                        @"COLORADO" : @"DENVER",
                                        @"CONNECTICUT" : @"HARTFORD",
                                        @"DELAWARE" : @"DOVER",
                                        @"FLORIDA" : @"TALLAHASSEE",
                                        @"GEORGIA" : @"ATLANTA",
                                        @"HAWAII" : @"HONOLULU",
                                        @"IDAHO" : @"BOISE",
                                        @"ILLINOIS" : @"SPRINGFIELD",
                                        @"INDIANA" : @"INDIANAPOLIS",
                                        @"IOWA" : @"DES MOINES",
                                        @"KANSAS" : @"TOPEKA",
                                        @"KENTUCKY" : @"FRANKFORT",
                                        @"LOUISIANA" : @"BATON ROUGE",
                                        @"MAINE" : @"AUGUSTA",
                                        @"MARYLAND" : @"ANNAPOLIS",
                                        @"MASSACHUESETTS" : @"BOSTON",
                                        @"MICHIGAN" : @"LANSING",
                                        @"MINNESOTA" : @"ST. PAUL",
                                        @"MISSISSIPPI" : @"JACKSON",
                                        @"MISSOURI" : @"JEFFERSON CITY",
                                        @"MONTANA" : @"HELENA",
                                        @"NEBRASKA" : @"LINCOLN",
                                        @"NEVADA" : @"CARSON CITY",
                                        @"NEW HAMPSHIRE" : @"CONCORD",
                                        @"NEW JERSEY" : @"TRENTON",
                                        @"NEW MEXICO" : @"SANTA FE",
                                        @"NEW YORK" : @"ALBANY",
                                        @"NORTH CAROLINA" : @"RALEIGH",
                                        @"NORTH DAKOTA" : @"BISMARCK",
                                        @"OHIO" : @"COLUMBUS",
                                        @"OKLAHOMA" : @"OKLAHOMA CITY",
                                        @"OREGON" : @"SALEM",
                                        @"PENNSYLVANIA" : @"HARRISBURG",
                                        @"RHODE ISLAND" : @"PROVIDENCE",
                                        @"SOUTH CAROLINA" : @"COLUMBIA",
                                        @"SOUTH DAKOTA" : @"PIERRE",
                                        @"TENNESSEE" : @"NASHVILLE",
                                        @"TEXAS" : @"AUSTIN",
                                        @"UTAH" : @"SALT LAKE CITY",
                                        @"VERMONT" : @"MONTPELIER",
                                        @"VIRGINIA" : @"RICHMOND",
                                        @"WASHINGTON" : @"OLYMPIA",
                                        @"WEST VIRGINIA" : @"CHARLESTON",
                                        @"WISCONSIN" : @"MADISON",
                                        @"WYOMING" : @"CHEYENNE"};
    
  
    // compare 1 state at a time with its capital
    BOOL lettersOverlap= NO;
    
    
    states = [statesAndCapitals allKeys];
    
    

    
    for (NSString *state in states) {
        //what's being executed
        lettersOverlap = NO;
        NSString *capital = statesAndCapitals [state];
        for (NSUInteger i = 0; i < state.length; i++) { //google how to write a substring
            NSString *singleletter = [state substringWithRange: (NSMakeRange (i , 1 ))];
            if ([capital containsString:singleletter]) {
                NSLog(@"%@ does contain single letter %@", capital, singleletter); //two arguments
                lettersOverlap = YES; ///you can reassign any value
        }
            
    }
        if (lettersOverlap == NO) {        // single = assignment/reassignment / == conditional, check, ex. lessthan
            NSLog(@"%@ is the answer", state);
            result = state;
        }
    
    }
    NSLog(@"the final result is: %@",result);
    
    return result;


}


        // now we have access to each state within states. Now, compare 1 state with corresponding capital.
        // capture that capital/value.
        // In a for in loop, go over the letters in each word (values). How do you pull the letters out?
        //second for loop -- Go through and get each letter of each state. And within the for loop,
        //within our second for loop, when we get each letter of the state, check capital and see if letter is present. Resulting in yes or no.
        // if letter is present, BOOL switches to NO, if it is not present it remains YES.
        // while BOOL says YES, keep tracking the letters with a while loop. So, the second for loop, the while loop, and the BOOL are all within this one loop.
        //when while loop is done with one set of state and capital, then it goes on to the next state's letters
        // How to get from YES BOOL to the result (SD) --- An If then statement: If BOOL is YES, then return the correct answer (state) ***Figure out how to get result to be South Dakota.
        // compare the letters.
    
 
    

@end

