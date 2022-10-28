# **Pink Sunrise Dentistry **
### Back-end Rails API

## **By Leith Price and Hardeep Singh**

Useful links:
- [Documentation](https://github.com/HardeepSinghAu/pink-sunrise-dentistry-documentation)
- [Pink Sunrise Dentistry Front-end repository](https://github.com/HardeepSinghAu/pink-sunrise-dentistry)
- [Pink Sunrise Dentistry Back-end repository](https://github.com/LeithPrice/pink-sunrise-dentistry-api)
- [www.pink-sunrise-dentistry.com]()

### **Purpose**

The client requested an app that would allow current and new patients to book their appointments as well as allow the Dentist (from here referred to as the Doctor)to register his availability through a dashboard. The client also wanted the Administrator to have special permissions to create users and to create Doctor Users who would then be able to update their schedules on the app.

The main purpose of this app is to promote Pink Sunrise Dentistry's online presence and reach a wider audience through a professional and secure app. Secondly and just as essentially, increase patient bookings and boost patient numbers by providing an online booking portal. This will streamline the booking process, giving staff more time to focus on other tasks and patients more control over their schedules.

The client also needed the app to convey detailed information regarding the Clinics services such as treatments and sell the clinics modern and family friendly ethos.
***

### **Functionality & Features**

The app will have three types of users, Patients, Doctor and Admin.
- All users, Patient, Doctor and Admin, will have the ability to login in using the same login page.
- Patient users will be able to register to create a patient account only.

When a Patient User is logged in they can complete the following operations:
- Use the booking system to search for and select an appointment date and time.
- Look up their appointment and billing history.
- Click on a payment button linking them, the patient to payment options.
- Patient Users can only view their own history.
- Delete or update their appointment bookings.

When an Administrator logs in they can complete the following operations:
- View an Admin dashboard to allow them to list the availability of the Doctor.
- Create other Users, Patients or Doctors, therefore allowing Doctor Users to have the required permissions to create appointments by selecting their availability.
- View Bookings filled.
- View a summary of Booking totals.

When a Doctor User is logged in they can complete the following operations:
- Update their availability, therefore creating available appointments for the Patient User to select.
- View booked appointments.

***
### **User Stories**

“As a [persona], I [want to], [so that].”

1. As a busy person, I am always on the go. I don't want to call my dentist and have to wait on hold to talk to someone to book. I want to be able to go online and book at the click of a button and get on with my day.

2. As the Office Manager, I have a lot of admin, booking fees to process and patients to manage. Sometimes the phone is ringing off the hook with people who want to book an appointment. It would take a load off my plate to be able to have patients book themselves in so that I can get on with other tasks, such as taking care of the patients in the clinic.

3. As someone who has a hectic schedule, I like to be able to see which appointments are available and book in the one that best suits my schedule. Being able to book my dentist appointment online would definitely help me in doing that.

4. I'm a very anxious person and dislike getting on the phone to make appointments. Being able to do this online without having to interact with another person will help me massively with being able to access a dentist and keeping on top of my dental health. Now if only I could do that without interacting with the dentist!

5. As a Mum of three, I regularly book the Dental appointments for my family and I. It would be handy to be able to access a history of treatments so that I can keep track of when a family member last visited so I can book them in after 6 month intervals.

6. I have a lot of dental work done due to a health issue, sometimes it's a challenge to keep track of it all with my other medical expenses and needs. It would be invaluable to me, to be able to see my treatment history and what is owed so that I can budget and plan to pay back the balance in due course.

7. As a small business owner, I can't afford the time to wait on hold for 20 mins to speak to the receptionist to do something as simple as lock in an appointment. In this day and age, this should really be an effortless online process.

8. As a University student, I am always on the go, busy with uni, work and catching up with friends. I don't want to wait on the phone to book an appointment. I should be able to see all the times available online and be able to select what fits around my plans.

9. I have just turned 18 and am taking charge of booking my own medical appointments. I'm surprised the clinic isn't already online and is quite a turn off using it as it's inconvenient. However, I am familiar with the clinic and would prefer to use them if they can start taking online appointments. In this day and age, everything should be streamlined online.

10. I am a Dentist who works at the clinic, it would be good to have a central system we can all access and update easily. Rather than have to tell the Administrator of my availability on a weekly basis, I should be able to login easily and securely to update the days I am in the clinic and also view my bookings for the day or week ahead.

***
### **Tech Stack**

**Front-end**
- HTML
- CSS 
- REACT.JS
- Javascript
- JSX

**Back-end**
- Ruby
- Ruby on Rails

**Database**
- PostgreSQL

**Deployment**
- Netlify for front-end
- Heroku for back-end

**Testing** 
- RESTful Client

**Project-management tools**
- Trello
- Discord

**Utilities** 
- Balsamiq
- [Lucid Chart](https://www.lucidchart.com/pages/)

**DevOps:**
- Git and Github
- VS Code
***
### **Dataflow Diagram**

The Dataflow diagram below is mapping out the flow of data within the application.

![](Docs/PSD_Dataflow_Diagram.png)
***
### **Application Architecture Diagram**
![](Docs/PSD_Architecture_Diagram.png)
***

