# HoopsLink: Database Design Capstone Project

## Description

For my capstone project, I will design and implement a cutting-edge platform called HoopsLink, a one-stop hub crafted to serve the comprehensive demands of basketball enthusiasts across all proficiency tiers. Nestled in the heart of a vibrant city with a rich basketball heritage, HoopsLink aims to elevate the local basketball scene by bridging the gap between coaches, players, and essential basketball gear providers.

Envisioned as a multi-faceted ecosystem, HoopsLink will streamline the connection between basketball aficionados and the resources they require to excel. The platform will encompass various services, such as personalized coaching sessions, gear procurement, and a review system that fosters a culture of continuous improvement and feedback. Whether one is taking their first dribble or preparing for professional leagues, HoopsLink is tailored to assist in their basketball journey. The cornerstone of HoopsLink is a bespoke database system that underpins the seamless operation of the platform. The database will not only handle intricate data relationships like linking players to coaches and orders to equipment but also empower users with intuitive views tailored to their specific roles. These views will enable customers to manage their profiles, schedule coaching sessions, order gear, and track payments efficiently and easily. Furthermore, coaches will be able to monitor their schedules, receive performance reviews, and interact with clients effectively.

## Business Rules:

1) Coach Availability for Sessions:
- Rule: Coaches must indicate their available times, and these must be adhered to when scheduling sessions. Coaches cannot be double-booked.

2) Customer Account Validation:
- Rule: Customers must have a valid account with a unique email address to book a session or order gear.

3) Equipment Stock Levels:
- Rule: The inventory must not allow the sale of items that are out of stock. Orders can only be placed for items with a stock quantity greater than zero.

4) Session Booking Timeframe:
- Rule: Sessions must be booked at least 24 hours in advance and cannot be scheduled for past dates.

5) Payment Completion Before Session:
- Rule: Full payment for the coaching session must be processed and confirmed before the session's scheduled start time.

6) Review Submission Window:
- Rule: Customers may submit reviews for coaching sessions within two weeks following the session date to ensure timely feedback.

7) Order Cancellation Policy:
- Rule: Customers can cancel gear orders up to 24 hours after placing the order, provided the order has not yet been shipped.

8) Personalized Gear Returns:
- Rule: Personalized gear (e.g., custom jerseys) cannot be returned or exchanged unless there is a manufacturing defect.

