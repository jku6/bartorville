module ApplicationHelper
    def dynamic_login_links
        if @auth
            link_to "Logout", logout_path
        else
            link_to "Login", login_path
        end
    end

    # def dynamic_photos_links
    #     if @auth
    #         render 'nav/photonav'
    #     else
    #     end
    # end

    def dynamic_dashboard_links
        if @auth
            link_to "Logged in as #{@auth.username}", dashboard_index_path
        else
        end
    end

    # def dynamic_search_links
    #     if @auth
    #         link_to "Search", search_path
    #     else
    #     end
    # end

end
