    <div class="mdui-panel-item-header">项目练习</div>
    <div class="mdui-panel-item-body">

        {{#PROJECT}}
        <div class="mdui-panel" mdui-panel>
            <div class="mdui-panel-item">
            <div class="mdui-panel-item-header">{{value1}}</div>
            <div class="mdui-panel-item-body">

                <div class="mdui-panel" mdui-panel>
                    <div class="mdui-panel-item">
                    <div class="mdui-panel-item-header">项目简介</div>
                    <div class="mdui-panel-item-body">
                        <p>{{value2}}</p>
                    </div>
                    </div>
                </div>
                <div class="mdui-panel" mdui-panel>
                    <div class="mdui-panel-item">
                    <div class="mdui-panel-item-header">运行环境</div>
                    <div class="mdui-panel-item-body">
                        <p>{{value3}}</p>
                    </div>
                    </div>
                </div>
                <div class="mdui-panel" mdui-panel>
                    <div class="mdui-panel-item">
                    <div class="mdui-panel-item-header">项目功能</div>
                    <div class="mdui-panel-item-body">
                        <p>{{value4}}</p>
                    </div>
                    </div>
                </div>
                <div class="mdui-panel" mdui-panel>
                    <div class="mdui-panel-item">
                    <div class="mdui-panel-item-header">核心流程</div>
                    <div class="mdui-panel-item-body">
                        <p>{{value5}}</p>
                    </div>
                    </div>
                </div>
                <div class="mdui-panel" mdui-panel>
                    <div class="mdui-panel-item">
                    <div class="mdui-panel-item-header">相关链接</div>
                    <div class="mdui-panel-item-body">
                        <p>{{value6}}</p>
                    </div>
                    </div>
                </div>

            </div>
            </div>
        </div>
        {{/PROJECT}}

        <div class="mdui-divider-dark" style="height: 10px"></div>
        <div class="mdui-card" style="overflow-y: auto;height: 700px">
        <from>
        <lable style="font-weight: 400">添加一个项目:{{ADDPROJ}}</lable>
        <div class="mdui-textfield">
              <label id="mess31" class="mdui-textfield-label">项目名称</label>
                <textarea Class="mdui-textfield-input"></textarea>
        </div>
        <div class="mdui-textfield">
              <label id="mess32" class="mdui-textfield-label">项目简介</label>
                <textarea class="mdui-textfield-input"></textarea>
        </div>
        <div class="mdui-textfield">
              <label id="mess33" class="mdui-textfield-label">运行环境</label>
                <textarea class="mdui-textfield-input"></textarea>
        </div>
        <div class="mdui-textfield">
              <label id="mess34" class="mdui-textfield-label">项目功能</label>
                <textarea class="mdui-textfield-input"></textarea>
        </div>
        <div class="mdui-textfield">
              <label id="mess35" class="mdui-textfield-label">核心流程</label>
                <textarea class="mdui-textfield-input"></textarea>
        </div>
        <div class="mdui-textfield">
              <label id="mess36" class="mdui-textfield-label">相关链接</label>
                <textarea class="mdui-textfield-input"></textarea>
        </div>
        <button id="addpro" class="mdui-btn mdui-ripple" style="margin-left: 90%" onclick="Addpro()">确定</button>
        </from>
        <br>
        <br>
        <from action="deproj_cgi" method="DELETE" style="position: relative;left: 5%;top: 50px">
        <lable>需要删除的项目:</lable><br>
        <select id="delproj"  name="delproj">
        {{#DELPROJ}}
        <option value="{{value1}}">{{value1}}</option>
        {{/DELPROJ}}
        </select><br>
        <label >{{DELPMESS}}</label><br>
        <input type="button" value="删除" name="delp" onclick="Deleteproj()" >
    </from>
    </div>
    </div>
