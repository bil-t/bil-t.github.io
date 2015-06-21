var IR_AfterHooks = {
    scrollUp: function() {
        $('body,html').scrollTop(0);
    }
};

Router.onAfterAction(IR_AfterHooks.scrollUp);