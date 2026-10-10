resource "auth0_connection" "connections" {
  for_each = var.connections

  name                             = each.value.name
  strategy                         = each.value.strategy
  display_name                     = each.value.display_name
  is_domain_connection             = each.value.is_domain_connection
  metadata                         = each.value.metadata
  options_client_secret_wo         = each.value.options_client_secret_wo
  options_client_secret_wo_version = each.value.options_client_secret_wo_version
  realms                           = each.value.realms
  show_as_button                   = each.value.show_as_button

  dynamic "authentication" {
    for_each = each.value.authentication != null ? [each.value.authentication] : []
    content {
      active = authentication.value.active
    }
  }

  dynamic "connected_accounts" {
    for_each = each.value.connected_accounts != null ? [each.value.connected_accounts] : []
    content {
      active = connected_accounts.value.active
    }
  }

  dynamic "cross_app_access_requesting_app" {
    for_each = each.value.cross_app_access_requesting_app != null ? [each.value.cross_app_access_requesting_app] : []
    content {
      active = cross_app_access_requesting_app.value.active
    }
  }

  dynamic "cross_app_access_resource_app" {
    for_each = each.value.cross_app_access_resource_app != null ? [each.value.cross_app_access_resource_app] : []
    content {
      status = cross_app_access_resource_app.value.status
    }
  }

  dynamic "options" {
    for_each = each.value.options != null ? [each.value.options] : []
    content {
      access_token_url  = options.value.access_token_url
      adfs_server       = options.value.adfs_server
      allowed_audiences = options.value.allowed_audiences
      api_enable_groups = options.value.api_enable_groups
      api_enable_users  = options.value.api_enable_users
      app_id            = options.value.app_id
      dynamic "attribute_map" {
        for_each = options.value.attribute_map != null ? [options.value.attribute_map] : []
        content {
          attributes     = attribute_map.value.attributes
          mapping_mode   = attribute_map.value.mapping_mode
          userinfo_scope = attribute_map.value.userinfo_scope
        }
      }
      dynamic "attributes" {
        for_each = options.value.attributes != null ? options.value.attributes : []
        content {
          dynamic "email" {
            for_each = attributes.value.email != null ? attributes.value.email : []
            content {
              dynamic "identifier" {
                for_each = email.value.identifier != null ? email.value.identifier : []
                content {
                  active         = identifier.value.active
                  default_method = identifier.value.default_method
                }
              }
              profile_required = email.value.profile_required
              dynamic "signup" {
                for_each = email.value.signup != null ? email.value.signup : []
                content {
                  status = signup.value.status
                  dynamic "verification" {
                    for_each = signup.value.verification != null ? signup.value.verification : []
                    content {
                      active = verification.value.active
                    }
                  }
                }
              }
              unique              = email.value.unique
              verification_method = email.value.verification_method
            }
          }
          dynamic "phone_number" {
            for_each = attributes.value.phone_number != null ? attributes.value.phone_number : []
            content {
              dynamic "identifier" {
                for_each = phone_number.value.identifier != null ? phone_number.value.identifier : []
                content {
                  active         = identifier.value.active
                  default_method = identifier.value.default_method
                }
              }
              profile_required = phone_number.value.profile_required
              dynamic "signup" {
                for_each = phone_number.value.signup != null ? phone_number.value.signup : []
                content {
                  status = signup.value.status
                  dynamic "verification" {
                    for_each = signup.value.verification != null ? signup.value.verification : []
                    content {
                      active = verification.value.active
                    }
                  }
                }
              }
            }
          }
          dynamic "username" {
            for_each = attributes.value.username != null ? attributes.value.username : []
            content {
              dynamic "identifier" {
                for_each = username.value.identifier != null ? username.value.identifier : []
                content {
                  active         = identifier.value.active
                  default_method = identifier.value.default_method
                }
              }
              profile_required = username.value.profile_required
              dynamic "signup" {
                for_each = username.value.signup != null ? username.value.signup : []
                content {
                  status = signup.value.status
                }
              }
              dynamic "validation" {
                for_each = username.value.validation != null ? username.value.validation : []
                content {
                  dynamic "allowed_types" {
                    for_each = validation.value.allowed_types != null ? validation.value.allowed_types : []
                    content {
                      email        = allowed_types.value.email
                      phone_number = allowed_types.value.phone_number
                    }
                  }
                  max_length = validation.value.max_length
                  min_length = validation.value.min_length
                }
              }
            }
          }
        }
      }
      auth_params = options.value.auth_params
      dynamic "authentication_methods" {
        for_each = options.value.authentication_methods != null ? options.value.authentication_methods : []
        content {
          dynamic "email_otp" {
            for_each = authentication_methods.value.email_otp != null ? [authentication_methods.value.email_otp] : []
            content {
              enabled = email_otp.value.enabled
            }
          }
          dynamic "passkey" {
            for_each = authentication_methods.value.passkey != null ? [authentication_methods.value.passkey] : []
            content {
              enabled = passkey.value.enabled
            }
          }
          dynamic "password" {
            for_each = authentication_methods.value.password != null ? [authentication_methods.value.password] : []
            content {
              api_behavior    = password.value.api_behavior
              enabled         = password.value.enabled
              signup_behavior = password.value.signup_behavior
            }
          }
          dynamic "phone_otp" {
            for_each = authentication_methods.value.phone_otp != null ? [authentication_methods.value.phone_otp] : []
            content {
              enabled = phone_otp.value.enabled
            }
          }
        }
      }
      authorization_endpoint = options.value.authorization_endpoint
      brute_force_protection = options.value.brute_force_protection
      client_id              = options.value.client_id
      client_secret          = options.value.client_secret
      community_base_url     = options.value.community_base_url
      configuration          = options.value.configuration
      dynamic "connection_settings" {
        for_each = options.value.connection_settings != null ? [options.value.connection_settings] : []
        content {
          pkce = connection_settings.value.pkce
        }
      }
      consumer_key    = options.value.consumer_key
      consumer_secret = options.value.consumer_secret
      dynamic "custom_headers" {
        for_each = options.value.custom_headers != null ? options.value.custom_headers : []
        content {
          header = custom_headers.value.header
          value  = custom_headers.value.value
        }
      }
      dynamic "custom_password_hash" {
        for_each = options.value.custom_password_hash != null ? [options.value.custom_password_hash] : []
        content {
          action_id = custom_password_hash.value.action_id
        }
      }
      custom_scripts = options.value.custom_scripts
      debug          = options.value.debug
      dynamic "decryption_key" {
        for_each = options.value.decryption_key != null ? [options.value.decryption_key] : []
        content {
          cert = decryption_key.value.cert
          key  = decryption_key.value.key
        }
      }
      destination_url                      = options.value.destination_url
      digest_algorithm                     = options.value.digest_algorithm
      disable_cache                        = options.value.disable_cache
      disable_self_service_change_password = options.value.disable_self_service_change_password
      disable_sign_out                     = options.value.disable_sign_out
      disable_signup                       = options.value.disable_signup
      discovery_url                        = options.value.discovery_url
      domain                               = options.value.domain
      domain_aliases                       = options.value.domain_aliases
      dpop_signing_alg                     = options.value.dpop_signing_alg
      email                                = options.value.email
      enable_script_context                = options.value.enable_script_context
      enabled_database_customization       = options.value.enabled_database_customization
      entity_id                            = options.value.entity_id
      fed_metadata_xml                     = options.value.fed_metadata_xml
      dynamic "federated_connections_access_tokens" {
        for_each = options.value.federated_connections_access_tokens != null ? [options.value.federated_connections_access_tokens] : []
        content {
          active = federated_connections_access_tokens.value.active
        }
      }
      fields_map           = options.value.fields_map
      forward_request_info = options.value.forward_request_info
      from                 = options.value.from
      dynamic "gateway_authentication" {
        for_each = options.value.gateway_authentication != null ? [options.value.gateway_authentication] : []
        content {
          audience              = gateway_authentication.value.audience
          method                = gateway_authentication.value.method
          secret                = gateway_authentication.value.secret
          secret_base64_encoded = gateway_authentication.value.secret_base64_encoded
          subject               = gateway_authentication.value.subject
        }
      }
      gateway_url                       = options.value.gateway_url
      global_token_revocation_jwt_iss   = options.value.global_token_revocation_jwt_iss
      global_token_revocation_jwt_sub   = options.value.global_token_revocation_jwt_sub
      icon_url                          = options.value.icon_url
      id_token_session_expiry_supported = options.value.id_token_session_expiry_supported
      id_token_signed_response_algs     = options.value.id_token_signed_response_algs
      identity_api                      = options.value.identity_api
      dynamic "idp_initiated" {
        for_each = options.value.idp_initiated != null ? [options.value.idp_initiated] : []
        content {
          client_authorize_query = idp_initiated.value.client_authorize_query
          client_id              = idp_initiated.value.client_id
          client_protocol        = idp_initiated.value.client_protocol
          enabled                = idp_initiated.value.enabled
        }
      }
      import_mode            = options.value.import_mode
      ips                    = options.value.ips
      issuer                 = options.value.issuer
      jwks_uri               = options.value.jwks_uri
      key_id                 = options.value.key_id
      map_user_id_to_id      = options.value.map_user_id_to_id
      max_groups_to_retrieve = options.value.max_groups_to_retrieve
      messaging_service_sid  = options.value.messaging_service_sid
      metadata_url           = options.value.metadata_url
      metadata_xml           = options.value.metadata_xml
      dynamic "mfa" {
        for_each = options.value.mfa != null ? [options.value.mfa] : []
        content {
          active                 = mfa.value.active
          return_enroll_settings = mfa.value.return_enroll_settings
        }
      }
      name                 = options.value.name
      non_persistent_attrs = options.value.non_persistent_attrs
      oidc_metadata        = options.value.oidc_metadata
      dynamic "passkey_options" {
        for_each = options.value.passkey_options != null ? [options.value.passkey_options] : []
        content {
          challenge_ui                   = passkey_options.value.challenge_ui
          local_enrollment_enabled       = passkey_options.value.local_enrollment_enabled
          progressive_enrollment_enabled = passkey_options.value.progressive_enrollment_enabled
        }
      }
      dynamic "password_complexity_options" {
        for_each = options.value.password_complexity_options != null ? [options.value.password_complexity_options] : []
        content {
          min_length = password_complexity_options.value.min_length
        }
      }
      dynamic "password_dictionary" {
        for_each = options.value.password_dictionary != null ? [options.value.password_dictionary] : []
        content {
          dictionary = password_dictionary.value.dictionary
          enable     = password_dictionary.value.enable
        }
      }
      dynamic "password_history" {
        for_each = options.value.password_history != null ? options.value.password_history : []
        content {
          enable = password_history.value.enable
          size   = password_history.value.size
        }
      }
      dynamic "password_no_personal_info" {
        for_each = options.value.password_no_personal_info != null ? [options.value.password_no_personal_info] : []
        content {
          enable = password_no_personal_info.value.enable
        }
      }
      dynamic "password_options" {
        for_each = options.value.password_options != null ? [options.value.password_options] : []
        content {
          dynamic "complexity" {
            for_each = password_options.value.complexity != null ? [password_options.value.complexity] : []
            content {
              character_type_rule   = complexity.value.character_type_rule
              character_types       = complexity.value.character_types
              identical_characters  = complexity.value.identical_characters
              max_length_exceeded   = complexity.value.max_length_exceeded
              min_length            = complexity.value.min_length
              sequential_characters = complexity.value.sequential_characters
            }
          }
          dynamic "dictionary" {
            for_each = password_options.value.dictionary != null ? [password_options.value.dictionary] : []
            content {
              active  = dictionary.value.active
              custom  = dictionary.value.custom
              default = dictionary.value.default
            }
          }
          dynamic "history" {
            for_each = password_options.value.history != null ? [password_options.value.history] : []
            content {
              active = history.value.active
              size   = history.value.size
            }
          }
          dynamic "profile_data" {
            for_each = password_options.value.profile_data != null ? [password_options.value.profile_data] : []
            content {
              active         = profile_data.value.active
              blocked_fields = profile_data.value.blocked_fields
            }
          }
        }
      }
      password_policy                        = options.value.password_policy
      ping_federate_base_url                 = options.value.ping_federate_base_url
      pkce_enabled                           = options.value.pkce_enabled
      precedence                             = options.value.precedence
      protocol_binding                       = options.value.protocol_binding
      provider                               = options.value.provider
      realm_fallback                         = options.value.realm_fallback
      recipient_url                          = options.value.recipient_url
      request_template                       = options.value.request_template
      request_token_url                      = options.value.request_token_url
      requires_username                      = options.value.requires_username
      scopes                                 = options.value.scopes
      scripts                                = options.value.scripts
      send_back_channel_nonce                = options.value.send_back_channel_nonce
      session_key                            = options.value.session_key
      set_user_root_attributes               = options.value.set_user_root_attributes
      should_trust_email_verified_connection = options.value.should_trust_email_verified_connection
      sign_in_endpoint                       = options.value.sign_in_endpoint
      sign_out_endpoint                      = options.value.sign_out_endpoint
      sign_saml_request                      = options.value.sign_saml_request
      signature_algorithm                    = options.value.signature_algorithm
      signature_method                       = options.value.signature_method
      signing_cert                           = options.value.signing_cert
      dynamic "signing_key" {
        for_each = options.value.signing_key != null ? [options.value.signing_key] : []
        content {
          cert = signing_key.value.cert
          key  = signing_key.value.key
        }
      }
      strategy_version                = options.value.strategy_version
      subject                         = options.value.subject
      syntax                          = options.value.syntax
      team_id                         = options.value.team_id
      template                        = options.value.template
      tenant_domain                   = options.value.tenant_domain
      token_endpoint                  = options.value.token_endpoint
      token_endpoint_auth_method      = options.value.token_endpoint_auth_method
      token_endpoint_auth_signing_alg = options.value.token_endpoint_auth_signing_alg
      token_endpoint_jwtca_aud_format = options.value.token_endpoint_jwtca_aud_format
      dynamic "totp" {
        for_each = options.value.totp != null ? [options.value.totp] : []
        content {
          length    = totp.value.length
          time_step = totp.value.time_step
        }
      }
      twilio_sid             = options.value.twilio_sid
      twilio_token           = options.value.twilio_token
      type                   = options.value.type
      upstream_params        = options.value.upstream_params
      use_cert_auth          = options.value.use_cert_auth
      use_kerberos           = options.value.use_kerberos
      use_oauth_spec_scope   = options.value.use_oauth_spec_scope
      use_wsfed              = options.value.use_wsfed
      user_authorization_url = options.value.user_authorization_url
      user_id_attribute      = options.value.user_id_attribute
      userinfo_endpoint      = options.value.userinfo_endpoint
      dynamic "validation" {
        for_each = options.value.validation != null ? [options.value.validation] : []
        content {
          dynamic "username" {
            for_each = validation.value.username != null ? [validation.value.username] : []
            content {
              max = username.value.max
              min = username.value.min
            }
          }
        }
      }
      waad_common_endpoint = options.value.waad_common_endpoint
      waad_protocol        = options.value.waad_protocol
    }
  }
}

