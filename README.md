# Assignment-Day2

# HACKERNEWS.  ---- MVVM

## **TASK**

Create the application "HackerNews" in which display the data available in the API. Try to convert it into MVVM model.

### **Solution:**

**FileName**                                                  **Work**

/Utilities/Constants            --------                      Holds the baseURL

/View/CustomCell/NewsCell       --------                      Setting the title and points data to display

/ApiManager/ApiManager          --------                      Getting the API responsible for fetching data from server and converting data to model

/Model/NewsModel                --------                      Defining the structure of data required

/Controller/NewsVC              --------                      Calling of the API once fetched
                                                              Returning the view of the table - no of rows and the calling the function to set the data

/Storyboard/Main                -------                       UI View of the page to display on the simulator which includes pointsLabel, titleLabel
                                                      
                                                                                                    
<img width="450" alt="HackerNews" src="https://user-images.githubusercontent.com/122267783/211715622-509acad4-53e2-420c-8eeb-5c08cb4901cc.png">


