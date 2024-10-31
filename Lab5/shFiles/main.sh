#!/bin/sh

MainMenu() {
  while [ "$CHOICE" != "E" ]; do
    clear

    echo "==================================================================="
    echo "| Oracle All Inclusive Tool                                       |"
    echo "| Main Menu - Select Desired Operation(s):                        |"
    echo "| <CTRL-Z Anytime to Enter Interactive CMD Prompt>                |"
    echo "------------------------------------------------------------------"

    echo " M) View Manual"
    echo " 1) Drop Tables"
    echo " 2) Create Tables"
    echo " 3) Populate Tables"
    echo " 4) Query Tables"
    echo " 5) Run Script 1"
    echo " 6) Run Script 2"
    echo " 7) Run Script 3"
    echo " 8) Run Script 4"
    echo " 9) Run script 5"

    echo " X) Force/Stop/Kill Oracle DB"

    echo " E) End/Exit"
    echo "Choose: "
    read -r CHOICE

    case $CHOICE in
      "M")
        echo "Manual option selected."
        echo "Manual: "
        echo "Script 1: Lists the names of all jobseekers who have applied to a job posted by Graham Construction and order in ascending order"
        echo "Script 2: Lists all jobs posted by FreshBooks or Sobeys Inc"
        echo "Script 3: Counts how many jobs are posted by employers in the Technology industry"
        echo "Script 4: Selects all jobs in the industry of Technology and join with the industry name from the employer table"
        echo "Script 5: Counts how many bachelor's degrees each school has and group by school name"
        read -p "Press any key to continue..."
        ;;
      "1")
        if [ -f drop_tables.sh ]; then
          echo "Dropping tables..."
          bash drop_tables.sh
        else
          echo "Error: drop_tables.sh not found."
        fi
        read -p "Press any key to continue..."
        ;;
      "2")
        if [ -f create_tables.sh ]; then
          echo "Creating tables..."
          bash create_tables.sh
        else
          echo "Error: create_tables.sh not found."
        fi
        read -p "Press any key to continue..."
        ;;
      "3")
        if [ -f populate_tables.sh ]; then
          echo "Popluating tables..."
          bash populate_tables.sh
        else
          echo "Error: populate_tables.sh not found."
        fi
        read -p "Press any key to continue..."
        ;;
      "4")
        if [ -f queries.sh ]; then
          echo "Running simple queries..."
          bash queries.sh
        else
          echo "Error: queries.sh not found."
        fi
        read -p "Press any key to continue..."
        ;;
      "5")
        if [ -f script1.sh ]; then
          echo "Running script 1..."
          bash script1.sh
        else
          echo "Error: script1.sh not found."
        fi
        read -p "Press any key to continue..."
        ;;
      "6")
        if [ -f script2.sh ]; then
          echo "Running script 2..."
          bash script2.sh
        else
          echo "Error: script2.sh not found."
        fi
        read -p "Press any key to continue..."
        ;;
      "7")
        if [ -f script3.sh ]; then
          echo "Running script 3..."
          bash script3.sh
        else
          echo "Error: script3.sh not found."
        fi
        read -p "Press any key to continue..."
        ;;
      "8")
        if [ -f script4.sh ]; then
          echo "Running script 4..."
          bash script4.sh
        else
          echo "Error: script4.sh not found."
        fi
        read -p "Press any key to continue..."
        ;;
      "9")
        if [ -f script5.sh ]; then
          echo "Running script 5..."
          bash script5.sh
        else
          echo "Error: script5.sh not found."
        fi
        read -p "Press any key to continue..."
        ;;
      "X")
        echo "Force/Stop/Kill Oracle DB option selected."
        # Add logic to force stop Oracle DB
        echo "Oracle DB stopped successfully (placeholder)."
        read -p "Press any key to continue..."
        ;;
      "E")
        echo "Exiting..."
        exit 0
        ;;
      *)
        echo "Nothing Here."
        read -p "Press any key to continue..."
        ;;
    esac
  done
}


MainMenu
