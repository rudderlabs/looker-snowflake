## Getting Started

Please refer to Looker documentation for creating a Snowflake database connection [Configuring a Snowflake Database](https://docs.looker.com/setup-and-management/database-config/snowflake). 

It is mandatory to keep **Persistent Derived Tables** checked while configuring the connection.

Remember to update the connection name in the [model file](models/rudder_webapp_snowflake.model.lookml)

Please ensure that the user specified in the Snowflake connection has the following privileges:

* SELECT privileges to the Snowflake schema where Rudder data is persisted
* Ownership of the **Temp Database** (e.g. LOOKER_SCRATCH) where Persistent Derived Tables will be created. 


[:point_right:](_3_table_structure.md) Continue to [Table Structure](_3_table_structure.md)

[:point_left:](_1_block_overview.md) Back to [Block Overview](_1_block_overview.md)

[:house:](README.md) README [Table of Contents](README.md)
