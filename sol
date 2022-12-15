#Creating A Dictionary To Store All The Values
rec = dict()

rec['TOI'] = {'Monday': 3, 'Tuesday': 3, 'Wednesday': 3, 'Thursday': 3, 'Friday': 3, 'Saturday': 5, 'Sunday': 6}

rec['Hindu'] = {'Monday': 2.5, 'Tuesday': 2.5, 'Wednesday': 2.5, 'Thursday': 2.5, 'Friday': 2.5, 'Saturday': 4, 'Sunday': 4}

rec['ET'] = {'Monday': 4, 'Tuesday': 4, 'Wednesday': 4, 'Thursday': 4, 'Friday': 4, 'Saturday': 4, 'Sunday': 10}

rec['BM'] = {'Monday': 1.5, 'Tuesday': 1.5, 'Wednesday': 1.5, 'Thursday': 1.5, 'Friday': 1.5, 'Saturday': 1.5, 'Sunday': 1.5}

rec['HT'] = {'Monday': 2, 'Tuesday': 2, 'Wednesday': 2, 'Thursday': 2, 'Friday': 2, 'Saturday': 4, 'Sunday': 4}

#Function To Find The Solution
def soln(rec,cost):
    
    ans = []
    
    newspapers = list(rec.keys())
    
    n = len(newspapers)
    
    for i in range(0,n-1,1):
        
        c1 = sum(list(rec[newspapers[i]].values()))
        
        if c1>cost:
            break
        
        for j in range(i+1,n,1):

            c2 = sum(list(rec[newspapers[j]].values()))
            
            if c1+c2<=cost:
                ans.append([newspapers[i],newspapers[j]])
                
    return ans

#Maximum Allowed Weekly Cost
cost = 40

#Calling the Function For The Generating The Solution
soln(rec,cost)
