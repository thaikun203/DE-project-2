# DE-Project-2: Real-Time Data Streaming with SSIS Tools

## **Project Overview**
This project involves building a **Data Warehouse** and implementing a real-time **ETL pipeline** using **SSIS** tools to process real-time data from various sources. The data is then visualized through **Power BI** to provide actionable insights and reports.

---

## **Requirements**
- **SQL Server**: Used to design and manage the Data Warehouse.
- **SSIS Tool**: Deployed to implement workflows and process real-time data streams.
- **Power BI**: Utilized to create comprehensive and interactive reports for business intelligence.

---

## **Technologies Used**
- **SQL Server**  
- **SSIS (SQL Server Integration Services)**  
- **Power BI**  

---

## **Pipeline Overview**
1. **Data Warehouse Design**  
   - A Data Warehouse was designed using **SQL Server**, following a star schema to optimize query performance for reporting.  
  
   (https://github.com/thaikun203/DE-project-2/blob/6cd7df5804418ca1335c4ba5e5208328d01b5af2/dw.sql)
2. **ETL Process with SSIS**  
   - Workflows were created in **SSIS** to extract, transform, and load (ETL) data in real-time.  
   - Data sources include APIs and flat files, which are processed and stored in the Data Warehouse.  
  
   ![Alt text](https://github.com/thaikun203/DE-project-2/blob/6cd7df5804418ca1335c4ba5e5208328d01b5af2/workflow.png)

3. **Real-Time Data Processing**  
   - **SSIS** workflows were configured to handle and process real-time data streams effectively, ensuring data quality and timeliness.

4. **Power BI Reports**  
   - Data from the warehouse was visualized in **Power BI**, offering interactive dashboards and key performance indicators (KPIs).  
  
   ![Alt text](https://github.com/thaikun203/DE-project-2/blob/6cd7df5804418ca1335c4ba5e5208328d01b5af2/report.png)

## **How to Run the Project**
1. **Prerequisites**:
   - Install **SQL Server** and **SSIS**.
   - Have **Power BI Desktop** installed for report visualization.

2. **Steps**:
   - **Step 1**: Clone this repository and configure the database in SQL Server.
   - **Step 2**: Import and execute the **SSIS package** to process the data.
   - **Step 3**: Open the **Power BI report** file to view and interact with the dashboards.

---

## **Project Highlights**
- Designed an optimized **Data Warehouse** for analytical processing.
- Implemented a **real-time ETL pipeline** using **SSIS**, ensuring efficient data handling.
- Developed visually engaging and actionable dashboards using **Power BI**.

---

## **Future Enhancements**
- Integrate additional data sources for a more comprehensive analysis.
- Enhance real-time capabilities by integrating with tools like **Kafka** or **Spark** for streaming data pipelines.
- Automate Power BI report refresh for live data updates.

---


 
