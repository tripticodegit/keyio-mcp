# Tools

Every tool of the Keyio MCP server, in the order the server lists them. Each carries MCP annotations: **read** tools change nothing; **write** tools create or change records; **destructive** ones delete, or do something that cannot be taken back (filing a guest registration with SES, issuing an invoice). A read-only connection is only offered the read tools, and a few read tools that return personal data (guests, tenant candidates, buyers) need a read-and-write connection.

234 tools. The list grows with the product; the server's own `tools/list` is always the current one.

| Tool | What it does | Access |
|---|---|---|
| `list_properties` | List properties | read |
| `get_property` | Get property | read |
| `list_rentals` | List rentals | read |
| `get_rental` | Get rental | read |
| `list_expenses` | List expenses | read |
| `get_expense` | Get expense | read |
| `list_templates` | List contract templates | read |
| `get_template` | Get contract template | read |
| `create_expense` | Create expense | write |
| `open_expense_form` | Open the new expense form | write |
| `update_expense` | Update expense | write |
| `delete_expense` | Delete expense | destructive |
| `create_rental` | Create rental | write |
| `open_rental_form` | Open the new rental form | write |
| `update_rental` | Update rental | write |
| `delete_rental` | Delete rental | destructive |
| `create_template` | Create contract template | write |
| `update_template` | Update contract template | write |
| `delete_template` | Delete contract template | destructive |
| `create_property` | Create property | write |
| `update_property` | Update property | write |
| `delete_property` | Delete property | destructive |
| `list_guests` | List guests on a rental | read |
| `add_guest` | Add a guest | write |
| `update_guest` | Update a guest | write |
| `remove_guest` | Remove a guest | destructive |
| `submit_guest_registration` | Submit guest registration to SES (real government filing) | destructive |
| `check_ses_filing_status` | Check an SES filing | write |
| `cancel_ses_filing` | Cancel an SES filing (real government action) | destructive |
| `get_guest_register` | Get a booking\ | read |
| `get_property_guest_register` | Get a property\ | read |
| `get_ertzaintza_status` | Ertzaintza set-up of a property | read |
| `generate_ertzaintza_file` | Ertzaintza XML file of a parte | write |
| `get_home_link` | Home's link with the other account | read |
| `request_home_link` | Ask the owner to link the home | write |
| `remove_home_link` | Unlink the home | destructive |
| `get_registration_link` | Property's registration link | read |
| `update_registration_link` | Change the property's registration link | write |
| `list_pending_registrations` | Registrations waiting for their booking | read |
| `assign_pending_registration` | Assign a registration to its booking | write |
| `discard_pending_registration` | Discard a pending registration | destructive |
| `get_expense_file` | Get an expense\ | read |
| `attach_expense_file` | Attach an invoice to an expense | write |
| `remove_expense_file` | Remove an expense\ | destructive |
| `list_recurring_expenses` | List repeating expenses | read |
| `update_recurring_expense` | Change a repeating expense | write |
| `delete_recurring_expense` | Stop a repeating expense | destructive |
| `create_upload_link` | Create an upload link | write |
| `list_invoice_inbox` | List the invoice inbox | read |
| `get_inbox_item` | Get an invoice from the inbox | read |
| `file_inbox_item` | File an invoice from the inbox | write |
| `split_inbox_item` | Split a PDF of several invoices in the inbox | write |
| `delete_inbox_item` | Discard an invoice from the inbox | destructive |
| `set_up_invoice_mailbox` | Set up the invoice mailbox | write |
| `list_documents` | List documents | read |
| `get_document` | Get a document | read |
| `upload_document` | Upload a document | write |
| `update_document` | Update a document | write |
| `delete_document` | Delete a document | destructive |
| `create_document_from_template` | Write a contract from a template | write |
| `get_document_draft` | Read a draft document | read |
| `update_document_draft` | Edit a draft document | write |
| `publish_document` | Publish a draft document | write |
| `get_signing_status` | Signing status of a document | read |
| `send_for_signature` | Send a document for signature | write |
| `mark_signed_on_paper` | Mark a document signed on paper | destructive |
| `undo_signed_on_paper` | Undo a paper signature | write |
| `cancel_signing_request` | Withdraw a request for signature | destructive |
| `resend_signing_invitation` | Resend one signer\ | write |
| `resend_signed_copy` | Send the signed copy again | write |
| `add_document_signer` | Add a signer to a document | write |
| `list_rent_payments` | List a rental\ | read |
| `record_rent_payment` | Record a rent payment | write |
| `get_rent_receipt` | Get a rent receipt | read |
| `send_rent_receipt` | Send a rent receipt to the tenant | write |
| `update_rent_payment_entry` | Correct a recorded payment | write |
| `delete_rent_payment_entry` | Delete a recorded payment | destructive |
| `list_rental_notes` | List a rental\ | read |
| `add_rental_note` | Add a note to a rental | write |
| `delete_rental_note` | Delete a rental note | destructive |
| `list_maintenance_requests` | List maintenance requests | read |
| `get_maintenance_request` | Get a maintenance request | read |
| `create_maintenance_request` | Create a maintenance request | write |
| `open_maintenance_form` | Open the new maintenance request form | write |
| `update_maintenance_request` | Update a maintenance request | write |
| `delete_maintenance_request` | Delete a maintenance request | destructive |
| `add_maintenance_photo` | Add a photo to a maintenance request | write |
| `get_maintenance_photo` | Get a maintenance photo | read |
| `delete_maintenance_photo` | Delete a maintenance photo | destructive |
| `list_billing_profiles` | List invoice issuers | read |
| `create_billing_profile` | Create an invoice issuer | write |
| `update_billing_profile` | Update an invoice issuer | write |
| `delete_billing_profile` | Delete an invoice issuer | destructive |
| `list_invoice_customers` | List invoice customers | read |
| `create_invoice_customer` | Save an invoice customer | write |
| `update_invoice_customer` | Update an invoice customer | write |
| `delete_invoice_customer` | Delete an invoice customer | destructive |
| `list_invoices` | List invoices | read |
| `list_stays_to_invoice` | List the month\ | read |
| `create_stay_invoice_draft` | Draft a guest stay\ | write |
| `get_invoice` | Get an invoice | read |
| `get_invoice_pdf` | Get an invoice PDF | read |
| `create_invoice_draft` | Create a draft invoice | write |
| `update_invoice_draft` | Update a draft invoice | write |
| `list_suplido_candidates` | List expenses that can be passed on as suplidos | read |
| `delete_invoice_draft` | Delete a draft invoice | destructive |
| `issue_invoice` | Issue an invoice | destructive |
| `send_invoice` | Email an invoice | write |
| `send_invoice_reminder` | Remind a customer to pay an invoice | write |
| `cancel_invoice` | Cancel an invoice | destructive |
| `rectify_invoice` | Start a corrective invoice | destructive |
| `resend_invoice_to_aeat` | Send an invoice to the AEAT again | destructive |
| `list_checklist_contacts` | List checklist contacts | read |
| `create_checklist_contact` | Add a checklist contact | write |
| `update_checklist_contact` | Update a checklist contact | write |
| `delete_checklist_contact` | Delete a checklist contact | destructive |
| `list_checklist_templates` | List checklist templates | read |
| `open_checklist_form` | Open the checklist editor | write |
| `create_checklist_template` | Create a checklist template | write |
| `update_checklist_template` | Update a checklist template | write |
| `delete_checklist_template` | Delete a checklist template | destructive |
| `list_checklist_schedules` | List checklist schedules | read |
| `create_checklist_schedule` | Schedule a checklist | write |
| `update_checklist_schedule` | Update a checklist schedule | write |
| `delete_checklist_schedule` | Delete a checklist schedule | destructive |
| `list_checklist_sends` | List sent checklists | read |
| `get_checklist_send` | Get a sent checklist | read |
| `send_checklist` | Send a checklist | write |
| `send_guest_registration_link` | Send the guest-registration link | write |
| `get_guest_portal` | Guest portal of a booking | read |
| `open_guest_portal` | Open a booking\ | write |
| `close_guest_portal` | Close a booking\ | write |
| `regenerate_guest_portal_pin` | New PIN for a guest portal | write |
| `send_guest_portal_link` | Send the guest portal | write |
| `get_renter_portal` | Renter portal of a lease | read |
| `update_renter_portal` | Change the renter portal | write |
| `send_renter_portal_link` | Send the renter portal link | write |
| `send_payment_reminder` | Send a payment reminder | write |
| `get_lease_renewal` | Lease renewal of a rental | read |
| `get_rent_update_proposal` | Yearly rent update of a lease | read |
| `get_rent_indices` | IRAV, IPC and IGC from the INE | read |
| `get_my_account` | My account | read |
| `list_alerts` | What needs attention | read |
| `offer_lease_renewal` | Offer a lease renewal | write |
| `apply_lease_renewal` | Extend the lease (renewal agreed) | write |
| `update_lease_renewal` | Update the lease renewal | write |
| `delete_renewal_history_entry` | Delete a past renewal | destructive |
| `get_late_payment_escalation` | Late-payment escalation of a rental | read |
| `escalate_late_payment` | Escalate a late payment | write |
| `close_late_payment_escalation` | Close a late-payment escalation | write |
| `get_rent_surcharges` | Recargos of a rental | read |
| `add_rent_surcharge` | Add a recargo | write |
| `reject_rent_surcharge` | Dismiss a proposed recargo | write |
| `list_candidates` | List tenant candidates | read |
| `get_candidate` | Get a tenant candidate | read |
| `create_candidate` | Add a tenant candidate | write |
| `update_candidate` | Update a tenant candidate | write |
| `delete_candidate` | Delete a tenant candidate | destructive |
| `promote_candidate` | Create the lease of a candidate | write |
| `get_income_summary` | Income summary for a year | read |
| `get_close_checklist` | What is left to close a month and a tax year | read |
| `get_availability` | Find homes free for a stay | read |
| `get_property_photo` | Get a property\ | read |
| `set_property_photo` | Set a property\ | write |
| `remove_property_photo` | Remove a property\ | destructive |
| `list_calendar_feeds` | List a property\ | read |
| `add_calendar_feed` | Add a calendar feed | write |
| `update_calendar_feed` | Update a calendar feed | write |
| `delete_calendar_feed` | Remove a calendar feed | destructive |
| `sync_calendar_feed` | Sync a calendar feed now | write |
| `get_tax_report` | Tax report of a property | read |
| `get_owner_statement` | Owner statement of a period | read |
| `list_owner_statements` | Owner statements sent | read |
| `send_owner_statement` | Send an owner statement | write |
| `create_commission_invoice` | Draft the fee invoice of an owner statement | write |
| `get_pricing` | Get pricing set-up | read |
| `get_pricing_calendar` | Get pricing calendar | read |
| `get_stay_quote` | Quote a stay | read |
| `create_pricing_season` | Create pricing season | write |
| `update_pricing_season` | Update pricing season | write |
| `delete_pricing_season` | Delete pricing season | destructive |
| `set_pricing_overrides` | Set prices, blocks and restrictions on dates | write |
| `list_pricing_quotes` | List saved quotes | read |
| `save_pricing_quote` | Save a quote | write |
| `update_pricing_quote` | Update a saved quote | write |
| `send_pricing_quote` | Send a saved quote to the client | write |
| `get_pricing_quote_document` | Get a quote\ | read |
| `delete_pricing_quote` | Delete a saved quote | destructive |
| `list_bank_movements` | List bank movements | read |
| `list_bank_imports` | List bank statement imports | read |
| `list_bank_income_targets` | List what money in can be matched with | read |
| `import_bank_statement` | Import a bank statement | write |
| `match_bank_movement` | Match a payment with invoices | write |
| `match_bank_income` | Match money in | write |
| `unmatch_bank_movement` | Undo a bank match | write |
| `set_bank_movement_ignored` | Set a bank movement aside | write |
| `delete_bank_import` | Delete a bank statement import | destructive |
| `set_expense_paid_by_hand` | Mark an invoice paid by hand | write |
| `set_invoice_collected` | Mark an issued invoice collected by hand | write |
| `list_sale_buyers` | List the buyers of a property on sale | read |
| `get_sale_buyer` | Get a buyer | read |
| `create_sale_buyer` | Add a buyer | write |
| `update_sale_buyer` | Update a buyer | write |
| `delete_sale_buyer` | Delete a buyer | destructive |
| `record_sale` | Record the sale of a property | write |
| `discard_other_sale_buyers` | Reject the other buyers | write |
| `list_sale_participants` | List the participants of a sale | read |
| `get_sale_participant` | Get a participant | read |
| `create_sale_participant` | Add a participant | write |
| `update_sale_participant` | Update a participant | write |
| `delete_sale_participant` | Delete a participant | destructive |
| `attach_sale_participant_file` | Attach an agreement or signed settlement to a participant | write |
| `generate_sale_participant_document` | Write a participant\ | write |
| `get_sale_participant_file` | Get a participant\ | read |
| `remove_sale_participant_file` | Remove a participant\ | destructive |
| `get_company_overhead` | Get the company overhead | read |
| `set_company_overhead` | Set the company overhead | write |
| `settle_sale_participants` | Settle the participants of a sale | write |
| `reopen_sale_participants` | Reopen the settlement | write |
| `get_website` | Get the website | read |
| `update_website` | Edit the website (draft) | write |
| `set_website_logo` | Set the website logo | write |
| `publish_website` | Publish the website | write |
| `discard_website_draft` | Discard the website changes | destructive |
| `unpublish_website` | Take the website offline | write |
| `set_website_domain` | Set the website domain | write |
| `verify_website_domain` | Check the website domain | write |
| `list_website_requests` | List website requests | read |
| `update_website_request` | Update a website request | write |
| `list_website_subscribers` | List newsletter subscribers | read |
| `remove_website_subscriber` | Remove a newsletter subscriber | destructive |
| `get_listing` | Get a home\ | read |
| `update_listing` | Edit a home\ | write |
| `add_listing_photo` | Add a photo to a listing | write |
