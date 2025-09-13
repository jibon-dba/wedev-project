local _M = {}

function _M.redirect_404()
    if ngx.status == 404 then
        return ngx.redirect("https://www.google.com", 302)
    end
end

return _M