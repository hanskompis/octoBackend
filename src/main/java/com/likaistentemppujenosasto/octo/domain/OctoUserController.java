package com.likaistentemppujenosasto.octo.domain;

import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/octousers")
@Controller
@RooWebScaffold(path = "octousers", formBackingObject = OctoUser.class)
public class OctoUserController {
}
