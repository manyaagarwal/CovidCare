# CovidCare

## Introduction 
Covid Care is a mobile application developed to assist individuals' health care during the COVID-19 pandemic. The app provides medical advice , opportunity for online consultation with doctors,  and daily health monitoring through the self-assessment features. 
 
Features: 
*Monitor Health:
-Input Body Temp
-Input Heartbeat (try to include this in-app) 
-Input Energy Level (manual modes) 
-Input other symptoms felt (cough/ sneeze/ dizzy)
*Treatment Guidelines:
-LiveChat Consultation with Doctors
-Priority can be implemented in deciding which users to treat in the hospital and which users to treat at home (triage). 
-When necessary, home kit testing can be delivered to users' homebase with videos available to show how the procedures should be done.
-Meds prescription can be given by doctors and give options for users to order online by giving whatsapp number / phone number of pharmacy (we can use google map to help track the closest pharmacy for the user) 
*Provide Emergency Call for ambulance ( with symptoms shown i.e. passed out/ temp>39’C)

## Purpose & Motivation 
The Growing popularity of Rapid Test to detect Covid-19 cases in different countries and regions have received numerous positive as well as negative feedback from different parties. With false negative and false positive results given, many started questioning its reliability in detecting the virus accurately. However, as it provides the quickest and relatively cheaper option compared to alternative lab test methods (Swab/PCR test) it is by far the most popular option for many individuals. 
Hence, our team is motivated to create a mobile app that will help reduce the risk of false rapid test results by providing a well-rounded care for individuals within their homebase to help monitor their health, provide quick guidelines and actions for preventive and curative treatment of Covid-19 cases as well as to ensure that they have adopted healthy habits. 

## How this application works 

The application connects people with doctors and hospitals. People who have tested positive for COVID-19 or show symptoms for the same can use the mobile application while doctors and hospitals can provide remote care via the web application. Patients can register themselves by providing basic information about their location, age and medical history. If a patient tested positive or shows common symptoms, they are linked with a doctor according to their location. Patients who test positive have daily video consultation sessions with the doctor while those who are symptomatic can book consultations anytime. In case of alarming health vitals, the doctor is promptly alerted. The app aims to prioritise patient care based on their medical history, age and daily vital trends. The concept app's apk can be downloaded from the [website] (https://manyaagarwal.github.io/CovidCare/)! 


## How this application was developed
The mobile application prototype was developed using Flutter with Firebase. The web application will be developed using ReactJS with Flutter. It will make use of python scripts to analyse daily vital trends, provide statistical conclusions and prioritise patients. For privacy concerns, sensitive user data like their medical history will be stored on the user's phone (making use of local storage) and shared with the doctors only when the user explicitly provides permission for sharing data. We aim to not keep our privacy policy in fine print but make it very clear to the users. 

## How to use this application
- The user begins by entering the login page. If they are new to our app, they must click on the ‘Sign up’ button and proceed to fill in their required contact details and create an account. However, if the user has already created an account previously, they must input their email address and password and enter their profile. 

- Once they are logged in, they will be directed to the calendar page where they will be asked to fill in their details for the current day. By selecting the present date, they will be directed to the next page where they will be asked to input information such as their Body Temperature and symptoms such as nausea, continuous sneezes etc for the day. Additionally, the inbuilt sensors in the app will measure users Energy level and Heartbeat. While we have not incorporated the sensors in the prototype we submitted, in the upcoming sections, we will elaborate on the sensors which could be incorporated to attain the desired results in the future. After the user inputs all the details, he should click ‘Save’ and this information is stored in the selected date. If the user wishes to view the details of a particular day, they can click on the date in the calendar and the details will be displayed. 

- Navigating to the Statistics page, the user will be welcomed immediately with a graphical representation of their input on the 3 health indicators; Energy, Heart Rate, and Temperature each represented with the colour green, purple and blue. An overall health status based on those input will also be shown with either High, Standard or Low directly below the graph.

- Moving on, if the user has any general queries regarding COVID-19, they may click on the ‘Chat with Bot’ option on the calendar page and have a conversation with the FAQs chatbot. While we have only displayed a prototype of the page, upon developing this app in the future, we aim to encompass a list of pre-defined answers for questions asked by the user. If any question is not recognized by the bot, the questions will be transferred to hospitals which the app has collaborated with and the hospital staff will send them a reply. 

- Lastly, if the user feels uneasy and displays many symptoms, they can request for a home testing kit which is delivered to the users' home base with videos as to how the procedures should be implemented. They can order this kit by calling the number provided (we plan on using google map to help track the closest pharmacy for the user). 
 
- After the test:
a)     If the user tests negative and displays no symptoms, they can continue to monitor their general health using our application.
b)    If the user tests negative but still shows symptoms, the assigned doctor (who has information regarding the user) can activate the ‘conversation with doctor’ application on the doctor’s app. This way, all information stored in the users’ calendar (their everyday health input) will be sent to the doctors every day for monitoring and the doctor can prescribe necessary medication for the user and allow the user to take a second test. 
c)     If the user tests positive and shows minimal symptoms, they will be treated similar to how the users above are treated at home. However, if the user tests positive and has a severe case, they will be requested to shift to the hospital immediately. 
- Priority would be implemented in deciding which users to respond first through the symptoms inputted. 

## Difficulties & Challenges we faced:
Amid the consecutive stages of planning, creating and testing, we are required to concentrate entirely on the performance, accessibility, user-friendliness, functionality, engaging and security of the app with the goal that target audience can be locked in. With such a significant number of alternatives available in the market which majorly concentrates on helping users cope with COVID-19, we are required to create a unique application which addresses any issue with respect to the virus. 
 
While we didn’t face multiple difficulties when developing our prototype, we came across a few general issues such as a communication gap as the three of us live in 3 different countries with distinct time zones. It took us a few days to brainstorm and come up with an idea for our application. Once we began working on our code and uploading them on GitHub, it was a bit challenging to create a perfect prototype as factors such as the time factor and difficulty in debugging each other’s code etc were overlapping. 

## Go-to-Market Evaluation 
Having government and individuals as our potential customers, we believe that the data we gathered (health trend of users) and services our app supports (online consultation with doctors) will entice both parties to download and use our app as it offers a win-win situation for them. 
On the government side, we will share the encrypted data of our users’ health trends for government tracking purposes, i.e. identifying red zones and or assisting them in identifying which area to impose local lock down upon. Moreover, as most Covid-19 treatments are being done in public hospitals, our app online consultation will help the government improve the state’s healthcare operational efficiency as it will reduce the crowd of individuals waiting in the hospitals for the consultation session. When the demand grows, the hospitals just need to add on more servers to ensure that user needs of online consultation can still be achieved. The prioritization queue management can be implemented as well on the hospital system by referring to the symptoms and health conditions users have inputted on the app.
Individuals wise, the application in-built features provides an easy to follow and well-rounded guide for their health during this pandemic. As it is offered complementarity, no monetary barrier exists, making it accessible for everyone. 







