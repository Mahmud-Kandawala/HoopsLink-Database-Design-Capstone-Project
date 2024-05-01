# HoopsLink: Database Design Capstone Project

## Description

For my capstone project, I will design and implement a cutting-edge platform called HoopsLink, a one-stop hub crafted to serve the comprehensive demands of basketball enthusiasts across all proficiency tiers. Nestled in the heart of a vibrant city with a rich basketball heritage, HoopsLink aims to elevate the local basketball scene by bridging the gap between coaches, players, and essential basketball gear providers.

Envisioned as a multi-faceted ecosystem, HoopsLink will streamline the connection between basketball aficionados and the resources they require to excel. The platform will encompass various services, such as personalized coaching sessions, gear procurement, and a review system that fosters a culture of continuous improvement and feedback. Whether one is taking their first dribble or preparing for professional leagues, HoopsLink is tailored to assist in their basketball journey. The cornerstone of HoopsLink is a bespoke database system that underpins the seamless operation of the platform. The database will not only handle intricate data relationships like linking players to coaches and orders to equipment but also empower users with intuitive views tailored to their specific roles. These views will enable customers to manage their profiles, schedule coaching sessions, order gear, and track payments efficiently and easily. Furthermore, coaches will be able to monitor their schedules, receive performance reviews, and interact with clients effectively.

## Business Rules for HoopsLink System

This document outlines the essential business rules that govern the operations and data management within the HoopsLink system. These rules are designed to ensure consistency, accuracy, and efficiency in handling data related to coaching, equipment ordering, and performance reviews.

### Rules

- **Unique Customer Identification**
  - **Rule:** Each customer must have a unique `customerID`. This ID is used to uniquely identify individual customers across the system and link their orders, sessions, and payments.

- **Coach Assignment**
  - **Rule:** Each coaching session must be assigned to only one coach. This assignment ensures that every session is properly managed and supervised by a qualified coach.

- **Order and Payment Linkage**
  - **Rule:** Each order must have a corresponding payment entry before the order is considered complete. This ensures financial transactions are recorded and linked to their respective orders.

- **Inventory Stock Check**
  - **Rule:** The system must not allow orders for items that have zero or negative stock quantities. This check prevents backorders and ensures that orders are fulfilled promptly.

- **Timely Performance Reviews**
  - **Rule:** Coaches must receive at least one performance review per year. This ensures ongoing assessment and improvement of coaching quality.

These rules are intended to provide a clear framework for managing interactions within the HoopsLink system and to facilitate the maintenance of high standards in customer service and operational management.
