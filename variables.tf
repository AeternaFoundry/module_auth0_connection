variable "connections" {
  description = <<EOT
Map of connections, attributes below
Required:
    - name
    - strategy
Optional:
    - display_name
    - is_domain_connection
    - metadata
    - options_client_secret_wo
    - options_client_secret_wo_version
    - realms
    - show_as_button
    - authentication (block):
        - active (required)
    - connected_accounts (block):
        - active (required)
    - cross_app_access_requesting_app (block):
        - active (required)
    - cross_app_access_resource_app (block):
        - status (required)
    - options (block):
        - access_token_url (optional)
        - adfs_server (optional)
        - allowed_audiences (optional)
        - api_enable_groups (optional)
        - api_enable_users (optional)
        - app_id (optional)
        - attribute_map (optional, block):
            - attributes (optional)
            - mapping_mode (required)
            - userinfo_scope (optional)
        - attributes (optional, block):
            - email (optional, block):
                - identifier (optional, block):
                    - active (optional)
                    - default_method (optional)
                - profile_required (optional)
                - signup (optional, block):
                    - status (optional)
                    - verification (optional, block):
                        - active (optional)
                - unique (optional)
                - verification_method (optional)
            - phone_number (optional, block):
                - identifier (optional, block):
                    - active (optional)
                    - default_method (optional)
                - profile_required (optional)
                - signup (optional, block):
                    - status (optional)
                    - verification (optional, block):
                        - active (optional)
            - username (optional, block):
                - identifier (optional, block):
                    - active (optional)
                    - default_method (optional)
                - profile_required (optional)
                - signup (optional, block):
                    - status (optional)
                - validation (optional, block):
                    - allowed_types (optional, block):
                        - email (optional)
                        - phone_number (optional)
                    - max_length (optional)
                    - min_length (optional)
        - auth_params (optional)
        - authentication_methods (optional, block):
            - email_otp (optional, block):
                - enabled (optional)
            - passkey (optional, block):
                - enabled (optional)
            - password (optional, block):
                - api_behavior (optional)
                - enabled (optional)
                - signup_behavior (optional)
            - phone_otp (optional, block):
                - enabled (optional)
        - authorization_endpoint (optional)
        - brute_force_protection (optional)
        - client_id (optional)
        - client_secret (optional)
        - community_base_url (optional)
        - configuration (optional)
        - connection_settings (optional, block):
            - pkce (required)
        - consumer_key (optional)
        - consumer_secret (optional)
        - custom_headers (optional, block):
            - header (required)
            - value (required)
        - custom_password_hash (optional, block):
            - action_id (required)
        - custom_scripts (optional)
        - debug (optional)
        - decryption_key (optional, block):
            - cert (required)
            - key (required)
        - destination_url (optional)
        - digest_algorithm (optional)
        - disable_cache (optional)
        - disable_self_service_change_password (optional)
        - disable_sign_out (optional)
        - disable_signup (optional)
        - discovery_url (optional)
        - domain (optional)
        - domain_aliases (optional)
        - dpop_signing_alg (optional)
        - email (optional)
        - enable_script_context (optional)
        - enabled_database_customization (optional)
        - entity_id (optional)
        - fed_metadata_xml (optional)
        - federated_connections_access_tokens (optional, block):
            - active (optional)
        - fields_map (optional)
        - forward_request_info (optional)
        - from (optional)
        - gateway_authentication (optional, block):
            - audience (optional)
            - method (optional)
            - secret (optional)
            - secret_base64_encoded (optional)
            - subject (optional)
        - gateway_url (optional)
        - global_token_revocation_jwt_iss (optional)
        - global_token_revocation_jwt_sub (optional)
        - icon_url (optional)
        - id_token_session_expiry_supported (optional)
        - id_token_signed_response_algs (optional)
        - identity_api (optional)
        - idp_initiated (optional, block):
            - client_authorize_query (optional)
            - client_id (optional)
            - client_protocol (optional)
            - enabled (optional)
        - import_mode (optional)
        - ips (optional)
        - issuer (optional)
        - jwks_uri (optional)
        - key_id (optional)
        - map_user_id_to_id (optional)
        - max_groups_to_retrieve (optional)
        - messaging_service_sid (optional)
        - metadata_url (optional)
        - metadata_xml (optional)
        - mfa (optional, block):
            - active (optional)
            - return_enroll_settings (optional)
        - name (optional)
        - non_persistent_attrs (optional)
        - oidc_metadata (optional)
        - passkey_options (optional, block):
            - challenge_ui (optional)
            - local_enrollment_enabled (optional)
            - progressive_enrollment_enabled (optional)
        - password_complexity_options (optional, block):
            - min_length (optional)
        - password_dictionary (optional, block):
            - dictionary (optional)
            - enable (optional)
        - password_history (optional, block):
            - enable (optional)
            - size (optional)
        - password_no_personal_info (optional, block):
            - enable (optional)
        - password_options (optional, block):
            - complexity (optional, block):
                - character_type_rule (optional)
                - character_types (optional)
                - identical_characters (optional)
                - max_length_exceeded (optional)
                - min_length (optional)
                - sequential_characters (optional)
            - dictionary (optional, block):
                - active (optional)
                - custom (optional)
                - default (optional)
            - history (optional, block):
                - active (optional)
                - size (optional)
            - profile_data (optional, block):
                - active (optional)
                - blocked_fields (optional)
        - password_policy (optional)
        - ping_federate_base_url (optional)
        - pkce_enabled (optional)
        - precedence (optional)
        - protocol_binding (optional)
        - provider (optional)
        - realm_fallback (optional)
        - recipient_url (optional)
        - request_template (optional)
        - request_token_url (optional)
        - requires_username (optional)
        - scopes (optional)
        - scripts (optional)
        - send_back_channel_nonce (optional)
        - session_key (optional)
        - set_user_root_attributes (optional)
        - should_trust_email_verified_connection (optional)
        - sign_in_endpoint (optional)
        - sign_out_endpoint (optional)
        - sign_saml_request (optional)
        - signature_algorithm (optional)
        - signature_method (optional)
        - signing_cert (optional)
        - signing_key (optional, block):
            - cert (required)
            - key (required)
        - strategy_version (optional)
        - subject (optional)
        - syntax (optional)
        - team_id (optional)
        - template (optional)
        - tenant_domain (optional)
        - token_endpoint (optional)
        - token_endpoint_auth_method (optional)
        - token_endpoint_auth_signing_alg (optional)
        - token_endpoint_jwtca_aud_format (optional)
        - totp (optional, block):
            - length (optional)
            - time_step (optional)
        - twilio_sid (optional)
        - twilio_token (optional)
        - type (optional)
        - upstream_params (optional)
        - use_cert_auth (optional)
        - use_kerberos (optional)
        - use_oauth_spec_scope (optional)
        - use_wsfed (optional)
        - user_authorization_url (optional)
        - user_id_attribute (optional)
        - userinfo_endpoint (optional)
        - validation (optional, block):
            - username (optional, block):
                - max (optional)
                - min (optional)
        - waad_common_endpoint (optional)
        - waad_protocol (optional)
EOT

  type = map(object({
    name                             = string
    strategy                         = string
    display_name                     = optional(string)
    is_domain_connection             = optional(bool)
    metadata                         = optional(map(string))
    options_client_secret_wo         = optional(string)
    options_client_secret_wo_version = optional(number)
    realms                           = optional(list(string))
    show_as_button                   = optional(bool)
    authentication = optional(object({
      active = bool
    }))
    connected_accounts = optional(object({
      active = bool
    }))
    cross_app_access_requesting_app = optional(object({
      active = bool
    }))
    cross_app_access_resource_app = optional(object({
      status = string
    }))
    options = optional(object({
      access_token_url  = optional(string)
      adfs_server       = optional(string)
      allowed_audiences = optional(set(string))
      api_enable_groups = optional(bool)
      api_enable_users  = optional(bool)
      app_id            = optional(string)
      attribute_map = optional(object({
        attributes     = optional(string)
        mapping_mode   = string
        userinfo_scope = optional(string)
      }))
      attributes = optional(list(object({
        email = optional(list(object({
          identifier = optional(list(object({
            active         = optional(bool)
            default_method = optional(string)
          })))
          profile_required = optional(bool)
          signup = optional(list(object({
            status = optional(string)
            verification = optional(list(object({
              active = optional(bool)
            })))
          })))
          unique              = optional(bool)
          verification_method = optional(string)
        })))
        phone_number = optional(list(object({
          identifier = optional(list(object({
            active         = optional(bool)
            default_method = optional(string)
          })))
          profile_required = optional(bool)
          signup = optional(list(object({
            status = optional(string)
            verification = optional(list(object({
              active = optional(bool)
            })))
          })))
        })))
        username = optional(list(object({
          identifier = optional(list(object({
            active         = optional(bool)
            default_method = optional(string)
          })))
          profile_required = optional(bool)
          signup = optional(list(object({
            status = optional(string)
          })))
          validation = optional(list(object({
            allowed_types = optional(list(object({
              email        = optional(bool)
              phone_number = optional(bool)
            })))
            max_length = optional(number)
            min_length = optional(number)
          })))
        })))
      })))
      auth_params = optional(map(string))
      authentication_methods = optional(list(object({
        email_otp = optional(object({
          enabled = optional(bool)
        }))
        passkey = optional(object({
          enabled = optional(bool)
        }))
        password = optional(object({
          api_behavior    = optional(string)
          enabled         = optional(bool)
          signup_behavior = optional(string)
        }))
        phone_otp = optional(object({
          enabled = optional(bool)
        }))
      })))
      authorization_endpoint = optional(string)
      brute_force_protection = optional(bool)
      client_id              = optional(string)
      client_secret          = optional(string)
      community_base_url     = optional(string)
      configuration          = optional(map(string))
      connection_settings = optional(object({
        pkce = string
      }))
      consumer_key    = optional(string)
      consumer_secret = optional(string)
      custom_headers = optional(list(object({
        header = string
        value  = string
      })))
      custom_password_hash = optional(object({
        action_id = string
      }))
      custom_scripts = optional(map(string))
      debug          = optional(bool)
      decryption_key = optional(object({
        cert = string
        key  = string
      }))
      destination_url                      = optional(string)
      digest_algorithm                     = optional(string)
      disable_cache                        = optional(bool)
      disable_self_service_change_password = optional(bool)
      disable_sign_out                     = optional(bool)
      disable_signup                       = optional(bool)
      discovery_url                        = optional(string)
      domain                               = optional(string)
      domain_aliases                       = optional(set(string))
      dpop_signing_alg                     = optional(string)
      email                                = optional(bool)
      enable_script_context                = optional(bool)
      enabled_database_customization       = optional(bool)
      entity_id                            = optional(string)
      fed_metadata_xml                     = optional(string)
      federated_connections_access_tokens = optional(object({
        active = optional(bool)
      }))
      fields_map           = optional(string)
      forward_request_info = optional(bool)
      from                 = optional(string)
      gateway_authentication = optional(object({
        audience              = optional(string)
        method                = optional(string)
        secret                = optional(string)
        secret_base64_encoded = optional(bool)
        subject               = optional(string)
      }))
      gateway_url                       = optional(string)
      global_token_revocation_jwt_iss   = optional(string)
      global_token_revocation_jwt_sub   = optional(string)
      icon_url                          = optional(string)
      id_token_session_expiry_supported = optional(bool)
      id_token_signed_response_algs     = optional(list(string))
      identity_api                      = optional(string)
      idp_initiated = optional(object({
        client_authorize_query = optional(string)
        client_id              = optional(string)
        client_protocol        = optional(string)
        enabled                = optional(bool)
      }))
      import_mode            = optional(bool)
      ips                    = optional(set(string))
      issuer                 = optional(string)
      jwks_uri               = optional(string)
      key_id                 = optional(string)
      map_user_id_to_id      = optional(bool)
      max_groups_to_retrieve = optional(string)
      messaging_service_sid  = optional(string)
      metadata_url           = optional(string)
      metadata_xml           = optional(string)
      mfa = optional(object({
        active                 = optional(bool)
        return_enroll_settings = optional(bool)
      }))
      name                 = optional(string)
      non_persistent_attrs = optional(set(string))
      oidc_metadata        = optional(string)
      passkey_options = optional(object({
        challenge_ui                   = optional(string)
        local_enrollment_enabled       = optional(bool)
        progressive_enrollment_enabled = optional(bool)
      }))
      password_complexity_options = optional(object({
        min_length = optional(number)
      }))
      password_dictionary = optional(object({
        dictionary = optional(set(string))
        enable     = optional(bool)
      }))
      password_history = optional(list(object({
        enable = optional(bool)
        size   = optional(number)
      })))
      password_no_personal_info = optional(object({
        enable = optional(bool)
      }))
      password_options = optional(object({
        complexity = optional(object({
          character_type_rule   = optional(string)
          character_types       = optional(set(string))
          identical_characters  = optional(string)
          max_length_exceeded   = optional(string)
          min_length            = optional(number)
          sequential_characters = optional(string)
        }))
        dictionary = optional(object({
          active  = optional(bool)
          custom  = optional(set(string))
          default = optional(string)
        }))
        history = optional(object({
          active = optional(bool)
          size   = optional(number)
        }))
        profile_data = optional(object({
          active         = optional(bool)
          blocked_fields = optional(set(string))
        }))
      }))
      password_policy                        = optional(string)
      ping_federate_base_url                 = optional(string)
      pkce_enabled                           = optional(bool)
      precedence                             = optional(list(string))
      protocol_binding                       = optional(string)
      provider                               = optional(string)
      realm_fallback                         = optional(bool)
      recipient_url                          = optional(string)
      request_template                       = optional(string)
      request_token_url                      = optional(string)
      requires_username                      = optional(bool)
      scopes                                 = optional(set(string))
      scripts                                = optional(map(string))
      send_back_channel_nonce                = optional(bool)
      session_key                            = optional(string)
      set_user_root_attributes               = optional(string)
      should_trust_email_verified_connection = optional(string)
      sign_in_endpoint                       = optional(string)
      sign_out_endpoint                      = optional(string)
      sign_saml_request                      = optional(bool)
      signature_algorithm                    = optional(string)
      signature_method                       = optional(string)
      signing_cert                           = optional(string)
      signing_key = optional(object({
        cert = string
        key  = string
      }))
      strategy_version                = optional(number)
      subject                         = optional(string)
      syntax                          = optional(string)
      team_id                         = optional(string)
      template                        = optional(string)
      tenant_domain                   = optional(string)
      token_endpoint                  = optional(string)
      token_endpoint_auth_method      = optional(string)
      token_endpoint_auth_signing_alg = optional(string)
      token_endpoint_jwtca_aud_format = optional(string)
      totp = optional(object({
        length    = optional(number)
        time_step = optional(number)
      }))
      twilio_sid             = optional(string)
      twilio_token           = optional(string)
      type                   = optional(string)
      upstream_params        = optional(string)
      use_cert_auth          = optional(bool)
      use_kerberos           = optional(bool)
      use_oauth_spec_scope   = optional(bool)
      use_wsfed              = optional(bool)
      user_authorization_url = optional(string)
      user_id_attribute      = optional(string)
      userinfo_endpoint      = optional(string)
      validation = optional(object({
        username = optional(object({
          max = optional(number)
          min = optional(number)
        }))
      }))
      waad_common_endpoint = optional(bool)
      waad_protocol        = optional(string)
    }))
  }))
}

