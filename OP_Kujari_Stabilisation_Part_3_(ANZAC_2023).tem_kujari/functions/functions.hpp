class HDL
{
      tag = "HDL";
      class functions {
            file = "functions";

            class create_civilians {
                  Description = "Create civilian group with a random unit count between 1 and 4, with a vehicle and waypoints";
            };

            class generate_details {
                  Description = "Generate all details for a civilian"
            };

            class set_licence_number {
                  Description = "Generate and set licence number for civilian";
            };

            class set_birthdate {
                  Description = "Generate and set birthdate for civilian";
            };

            class set_registration_date {
                  Description = "Generate and set registration date for civilian";
            };

            class set_villages {
                  Description = "Generate and set birth and living villages for civilian";
            };

            class add_default_actions {
                  Description = "Add default interrogation actions for name, dob, villages, and show card";
            };

            class add_checkpoint_actions {
                  Description = "Add default instructing actions for checkpoint movements";
            };

            class add_checkpoint_dialog {
                  Description = "Add dialogs to units for interrogations in checkpoint";
            };

            class play_radio_chatter {
                  Description = "Plays ambient radio chatter when on specified channels";
            };

            class create_dialog {
                  Description = "Create dialog view for ID card";
            };
      };
};
