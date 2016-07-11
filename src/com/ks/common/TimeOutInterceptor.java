package com.ks.common;

import java.util.Map;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

@SuppressWarnings("serial")
public class TimeOutInterceptor extends AbstractInterceptor {
    private String ignoreActions;

    // ignoreActions属性的getter方法
    public String getIgnoreActios() {
        return ignoreActions;
    }

    // ignoreActions属性的setter方法
    public void setIgnoreActions(String ignoreActions) {
        this.ignoreActions = ignoreActions;
    }

    @Override
    public String intercept(ActionInvocation invocation) throws Exception {
        ActionContext ctx = invocation.getInvocationContext();

        Map<String, Object> session = ctx.getSession();
        Object user =  session.get("user");

        boolean ignore = false;
        String currentAction = invocation.getProxy().getActionName();
        String[] actions = ignoreActions.split(",");

        for (String action : actions) {
            if (currentAction.matches(action.trim())) {
                ignore = true;
                break;
            }
        }

        if (user != null || ignore == true) {
            return invocation.invoke();
        } else {
            return Action.LOGIN;
        }

    }
}
