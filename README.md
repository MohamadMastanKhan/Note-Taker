# Note-Taker
NoteTaker is a Java-based web application for managing notes, built using Servlets, JSP, and Hibernate ORM. It follows the MVC architecture and uses MySQL for data storage. The project is structured with Hibernate for database operations, Maven for dependency management, and runs on a Tomcat server

**📂 Project Structure**

NoteTaker/
│—— src/
│   ├—— main/
│   │   ├—— java/com/
│   │   │   ├—— Entity/            # Java class for Note entity
│   │   │   ├—— Helper/            # FactoryProvider for Hibernate SessionFactory
│   │   │   ├—— servlets/          # Servlets for CRUD operations
│   │   ├—— resources/
│   │   │   ├—— hibernate.cfg.xml  # Hibernate configuration file
│   │   ├—— webapp/
│   │   │   ├—— add_notes.jsp      # Page to add a new note
│   │   │   ├—— all_notes.jsp      # Page to display all notes
│—— pom.xml                        # Maven dependencies and build configuration
│—— .classpath                      # Eclipse project metadata
│—— .project                        # Eclipse project metadata
│—— .settings/                      # Eclipse project settings


**🚀 Features**

📝 Create, Update, and Delete Notes

📂 Uses Hibernate for Database ORM

🌐 JSP-based Frontend

🖥️ Servlets for Backend Processing

🎮 MVC Architecture

🛠️ Maven-based Project

**⚙️ Technologies Used**

Java (JDK 8+)

JSP & Servlets (for frontend & backend)

Hibernate (ORM for database interactions)

MySQL (Database)

Apache Tomcat (Server)

Maven (Dependency Management)

**🛠️ Setup Instructions**
    1.Clone the Repository:
       git clone https://github.com/MohamadMastanKhan/Note-Taker.git
       cd Note-Taker
    2.Configure Database
            Create a MySQL database named notetaker_db
            Update hibernate.cfg.xml with your MySQL credentials
    3.Build & Run
            mvn clean install
    4.Deploy on Tomcat
            Copy the NoteTaker.war file to Tomcat's webapps directory
            Start Tomcat and access the application at:  
                http://localhost:8080/NoteTaker/

**🐟 API Endpoints (Servlets)**

The application provides the following servlets for handling different actions:

    SaveNoteServlet (/SaveNote): Handles creating new notes and storing them in the database.

    UpdateServlet (/UpdateNote): Handles updating existing notes with new content.

    DeleteServlet (/DeleteNote): Handles deleting notes from the database.

**🤝 Contributing**

    Feel free to raise issues and contribute to this project.

**🐝 License**

MIT License © 2025 MohamadMastankhan
  
