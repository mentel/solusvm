module SolusVM
  # SolusVM::General is the class for retrieving general information.
  class General < Base
    # Public: Lists available templates.
    #
    # type - a valid virtualization type; e.g: [openvz|xen|xen hvm|kvm]
    #
    # Returns an Array.
    def templates(type)
      validate_server_type(type) do
        perform_request(action: 'listtemplates', type: type)
        case type
        when 'kvm'
          parse_returned_params_as_list("templateskvm")
        when 'xen hvm'
          parse_returned_params_as_list("templateshvm")
        else
          parse_returned_params_as_list('templates')
        end
      end
    end

    # Public: Lists available plans.
    #
    # type - a valid virtualization type; e.g: [openvz|xen|xen hvm|kvm]
    #
    # Returns an Array.
    def plans(type)
      validate_server_type(type) do
        perform_request(action: 'listplans', type: type)
        parse_returned_params_as_list('plans')
      end
    end

    # Public: Lists available ISOS.
    #
    # type - a valid virtualization type; e.g: [openvz|xen|xen hvm|kvm]
    #
    # Returns an Array.
    def isos(type)
      validate_server_type(type) do
        perform_request(action: 'listiso', type: type)
        parse_returned_params_as_list('iso')
      end
    end
  end
end
