## Block Overview

[RudderStack](https://rudderstack.com/) is an open-source, warehouse-first customer data pipeline.

Using RudderStack's libraries, companies can easily track and route their customer data for analysis in Looker. 

RudderStack offers the following features to the customers through their free or enterprise plan:

- [**Integrations**](https://docs.rudderstack.com/destinations-guides): RudderStack currently supports over 70 marketing or analytics tools. Rather than manually configuring and integrating the tracking code for each tool, customers can track their data at once using RudderStack's event collection libraries and SDKs. Once the destination is configured and enabled in the dashboard, RudderStack automatically starts capturing and sending the event data to the destination in a format that it expects.

- [**Sources**](https://docs.rudderstack.com/sources-guides): RudderStack offers client-side SDKs for [JavaScript](https://docs.rudderstack.com/rudderstack-sdk-integration-guides/rudderstack-javascript-sdk), [Android](https://docs.rudderstack.com/rudderstack-sdk-integration-guides/rudderstack-android-sdk), [iOS](https://docs.rudderstack.com/rudderstack-sdk-integration-guides/rudderstack-ios-sdk), [React Native](https://docs.rudderstack.com/rudderstack-sdk-integration-guides/rudderstack-react-native-sdk), [Unity](https://docs.rudderstack.com/rudderstack-sdk-integration-guides/getting-started-with-unity-sdk) as well as server-side SDKs for [Python](https://docs.rudderstack.com/rudderstack-sdk-integration-guides/rudderstack-python-sdk), [Node.js](https://docs.rudderstack.com/rudderstack-sdk-integration-guides/rudderstack-node-sdk), [Ruby](https://docs.rudderstack.com/rudderstack-sdk-integration-guides/rudderstack-ruby-sdk) and [Go](https://docs.rudderstack.com/rudderstack-sdk-integration-guides/rudderstack-go-sdk). These SDKs can be used to collect and route customer event data from a variety of platforms directly to RudderStack. This event data can then, in turn, be transformed and further routed to the customers' preferred destination for further processing or analytics. RudderStack also supports various cloud sources for [event streaming](https://docs.rudderstack.com/rudderstack-event-streams), as well as [cloud extract sources](https://docs.rudderstack.com/cloud-extract-sources) to build efficient ELT pipelines from cloud applications to your data warehouse.


- [**Data Warehouses**](https://docs.rudderstack.com/data-warehouse-integration-guides): RudderStack supports data warehouse integrations for Snowflake, Redshift, ClickHouse, PostgreSQL and Google BigQuery. Users can load their customer event data or data from their cloud apps into these connected warehouses and start analyzing them in Looker.

## What's Next?
[Configure the Database Connection](https://github.com/rudderlabs/looker-snowflake/blob/master/_2_configuring_the_database_connection.md)

