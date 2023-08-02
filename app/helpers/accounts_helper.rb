module AccountsHelper
    def alert_class(flash_type)
        case flash_type.to.sym
        when :notice
            "alert-success"
        when :alert
            "alert-warning"
        when :error
            "alert-danger"
        end
    end
end
