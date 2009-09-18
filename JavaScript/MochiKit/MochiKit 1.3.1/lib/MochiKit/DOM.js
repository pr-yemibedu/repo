/***

MochiKit.DOM 1.3.1

See <http://mochikit.com/> for documentation, downloads, license, etc.

(c) 2005 Bob Ippolito.  All rights Reserved.

***/

/**
 * @author Bob Ippolito
 * @projectDescription	API for DOM manipulation.
 * @namespace MochiKit.DOM MochiKit.DOM namespace for easily manipulating the DOM of an HTML document.
 * @version 1.3.1
 */

if (typeof(dojo) != 'undefined') {
    dojo.provide("MochiKit.DOM");
    dojo.require("MochiKit.Iter");
}
if (typeof(JSAN) != 'undefined') {
    JSAN.use("MochiKit.Iter", []);
}

try {
    if (typeof(MochiKit.Iter) == 'undefined') {
        throw "";
    }
} catch (e) {
    throw "MochiKit.DOM depends on MochiKit.Iter!";
}

if (typeof(MochiKit.DOM) == 'undefined') {
    MochiKit.DOM = {};
}

MochiKit.DOM.NAME = "MochiKit.DOM";
MochiKit.DOM.VERSION = "1.3.1";
MochiKit.DOM.__repr__ = function () {
    return "[" + this.NAME + " " + this.VERSION + "]";
};
MochiKit.DOM.toString = function () {
    return this.__repr__();
};

MochiKit.DOM.EXPORT = [
    "formContents",
    "currentWindow",
    "currentDocument",
    "withWindow",
    "withDocument",
    "registerDOMConverter",
    "coerceToDOM",
    "createDOM",
    "createDOMFunc",
    "getNodeAttribute",
    "setNodeAttribute",
    "updateNodeAttributes",
    "appendChildNodes",
    "replaceChildNodes",
    "removeElement",
    "swapDOM",
    "BUTTON",
    "TT",
    "PRE",
    "H1",
    "H2",
    "H3",
    "BR",
    "CANVAS",
    "HR",
    "LABEL",
    "TEXTAREA",
    "FORM",
    "STRONG",
    "SELECT",
    "OPTION",
    "OPTGROUP",
    "LEGEND",
    "FIELDSET",
    "P",
    "UL",
    "OL",
    "LI",
    "TD",
    "TR",
    "THEAD",
    "TBODY",
    "TFOOT",
    "TABLE",
    "TH",
    "INPUT",
    "SPAN",
    "A",
    "DIV",
    "IMG",
    "getElement",
    "$",
    "computedStyle",
    "getElementsByTagAndClassName",
    "addToCallStack",
    "addLoadEvent",
    "focusOnLoad",
    "setElementClass",
    "toggleElementClass",
    "addElementClass",
    "removeElementClass",
    "swapElementClass",
    "hasElementClass",
    "escapeHTML",
    "toHTML",
    "emitHTML",
    "setDisplayForElement",
    "hideElement",
    "showElement",
    "scrapeText",
    "elementDimensions",
    "elementPosition",
    "setElementDimensions",
    "setElementPosition",
    "getViewportDimensions",
    "setOpacity"
];

MochiKit.DOM.EXPORT_OK = [
    "domConverters"
];

/** @id Dimensions */
MochiKit.DOM.Dimensions = function (w, h) {
    this.w = w;
    this.h = h;
};

MochiKit.DOM.Dimensions.prototype.repr = function () {
    var repr = MochiKit.Base.repr;
    return "{w: "  + repr(this.w) + ", h: " + repr(this.h) + "}";
};

/** @id Coordinates */
MochiKit.DOM.Coordinates = function (x, y) {
    this.x = x;
    this.y = y;
};

MochiKit.DOM.Coordinates.prototype.repr = function () {
    var repr = MochiKit.Base.repr;
    return "{x: "  + repr(this.x) + ", y: " + repr(this.y) + "}";
};

MochiKit.DOM.Coordinates.prototype.toString = function () {
    return this.repr();
};

MochiKit.Base.update(MochiKit.DOM, {

/** @id setOpacity */
    setOpacity: function(elem, o) {
        elem = MochiKit.DOM.getElement(elem);
        MochiKit.DOM.updateNodeAttributes(elem, {'style': {
                'opacity': o, 
                '-moz-opacity': o,
                '-khtml-opacity': o,
                'filter':' alpha(opacity=' + (o * 100) + ')'
            }});
    },

/** @id getViewportDimensions */    
    getViewportDimensions: function() {
        var d = new MochiKit.DOM.Dimensions();
        
        var w = MochiKit.DOM._window;
        var b = MochiKit.DOM._document.body;
        
        if (w.innerWidth) {
            d.w = w.innerWidth;
            d.h = w.innerHeight;
        } else if (b.parentElement.clientWidth) {
            d.w = b.parentElement.clientWidth;
            d.h = b.parentElement.clientHeight;
        } else if (b && b.clientWidth) {
            d.w = b.clientWidth;
            d.h = b.clientHeight;
        }
        return d;
    },

/** @id elementDimensions  */
    elementDimensions: function (elem) {
        var self = MochiKit.DOM;
        if (typeof(elem.w) == 'number' || typeof(elem.h) == 'number') {
            return new self.Dimensions(elem.w || 0, elem.h || 0);
        }
        elem = self.getElement(elem);
        if (!elem) {
            return undefined;
        }
        if (self.computedStyle(elem, 'display') != 'none') {
            return new self.Dimensions(elem.offsetWidth || 0, 
                elem.offsetHeight || 0);
        }
        var s = elem.style;
        var originalVisibility = s.visibility;
        var originalPosition = s.position;
        s.visibility = 'hidden';
        s.position = 'absolute';
        s.display = '';
        var originalWidth = elem.offsetWidth;
        var originalHeight = elem.offsetHeight;
        s.display = 'none';
        s.position = originalPosition;
        s.visibility = originalVisibility;
        return new self.Dimensions(originalWidth, originalHeight);
    },

    /* 

        elementPosition is adapted from YAHOO.util.Dom.getXY, version 0.9.0.
        Copyright: Copyright (c) 2006, Yahoo! Inc. All rights reserved.
        License: BSD, http://developer.yahoo.net/yui/license.txt

    */

/** @id elementPosition  */	
    elementPosition: function (elem, /* optional */relativeTo) {
        var self = MochiKit.DOM;        
        elem = self.getElement(elem);
        
        if (!elem) { 
            return undefined;
        }

        var c = new self.Coordinates(0, 0);
        
        if (elem.x && elem.y) {
            /* it's just a MochiKit.DOM.Coordinates object */
            c.x += elem.x || 0;
            c.y += elem.y || 0;
            return c;
        } else if (elem.parentNode === null || self.computedStyle(elem, 'display') == 'none') {
            return undefined;
        }
        
        var box = null;
        var parent = null;
        
        var d = MochiKit.DOM._document;
        var de = d.documentElement;
        var b = d.body;            
    
        if (elem.getBoundingClientRect) { // IE shortcut
            
            /*
            
                The IE shortcut is off by two:
                http://msdn.microsoft.com/workshop/author/dhtml/reference/methods/getboundingclientrect.asp
                
            */
            box = elem.getBoundingClientRect();
                        
            c.x += box.left + 
                (de.scrollLeft || b.scrollLeft) - 
                (de.clientLeft || b.clientLeft);
            
            c.y += box.top + 
                (de.scrollTop || b.scrollTop) - 
                (de.clientTop || b.clientTop);
            
        } else if (d.getBoxObjectFor) { // Gecko shortcut
            box = d.getBoxObjectFor(elem);
            c.x += box.x;
            c.y += box.y;
        } else if (elem.offsetParent) {
            c.x += elem.offsetLeft;
            c.y += elem.offsetTop;
            parent = elem.offsetParent;
            
            if (parent != elem) {
                while (parent) {
                    c.x += parent.offsetLeft;
                    c.y += parent.offsetTop;
                    parent = parent.offsetParent;
                }
            }

            /*
                
                Opera < 9 and old Safari (absolute) incorrectly account for 
                body offsetTop and offsetLeft.
                
            */            
            var ua = navigator.userAgent.toLowerCase();
            if ((typeof(opera) != "undefined" && 
                parseFloat(opera.version()) < 9) || 
                (ua.indexOf('safari') != -1 && 
                self.computedStyle(elem, 'position') == 'absolute')) {
                                
                c.x -= b.offsetLeft;
                c.y -= b.offsetTop;
                
            }
        }
        
        if (typeof(relativeTo) != 'undefined') {
            relativeTo = arguments.callee(relativeTo);
            if (relativeTo) {
                c.x -= (relativeTo.x || 0);
                c.y -= (relativeTo.y || 0);
            }
        }
        
        if (elem.parentNode) {
            parent = elem.parentNode;
        } else {
            parent = null;
        }
        
        while (parent && parent.tagName != 'BODY' && 
            parent.tagName != 'HTML') {
            c.x -= parent.scrollLeft;
            c.y -= parent.scrollTop;        
            if (parent.parentNode) {
                parent = parent.parentNode;
            } else {
                parent = null;
            }
        }
        
        return c;
    },

/** @id setElementDimensions */    
    setElementDimensions: function (elem, newSize/* optional */, units) {
        elem = MochiKit.DOM.getElement(elem);
        if (typeof(units) == 'undefined') {
            units = 'px';
        }
        MochiKit.DOM.updateNodeAttributes(elem, {'style': {
            'width': newSize.w + units, 
            'height': newSize.h + units
        }});
    },

/** @id setElementPosition */    
    setElementPosition: function (elem, newPos/* optional */, units) {
        elem = MochiKit.DOM.getElement(elem);
        if (typeof(units) == 'undefined') {
            units = 'px';
        }
        MochiKit.DOM.updateNodeAttributes(elem, {'style': {
            'left': newPos.x + units,
            'top': newPos.y + units
        }});
    },

/** @id currentWindow */    
    currentWindow: function () {
        return MochiKit.DOM._window;
    },

/** @id currentDocument */
    currentDocument: function () {
        return MochiKit.DOM._document;
    },

/** @id withWindow */
    withWindow: function (win, func) {
        var self = MochiKit.DOM;
        var oldDoc = self._document;
        var oldWin = self._win;
        var rval;
        try {
            self._window = win;
            self._document = win.document;
            rval = func();
        } catch (e) {
            self._window = oldWin;
            self._document = oldDoc;
            throw e;
        }
        self._window = oldWin;
        self._document = oldDoc;
        return rval;
    },

/** @id formContents  */
    formContents: function (elem/* = document */) {
        var names = [];
        var values = [];
        var m = MochiKit.Base;
        var self = MochiKit.DOM;
        if (typeof(elem) == "undefined" || elem === null) {
            elem = self._document;
        } else {
            elem = self.getElement(elem);
        }
        m.nodeWalk(elem, function (elem) {
            var name = elem.name;
            if (m.isNotEmpty(name)) {
                var tagName = elem.nodeName;
                if (tagName == "INPUT"
                    && (elem.type == "radio" || elem.type == "checkbox")
                    && !elem.checked
                ) {
                    return null;
                }
                if (tagName == "SELECT") {
                    if (elem.selectedIndex >= 0) {
                        var opt = elem.options[elem.selectedIndex];
                        names.push(name);
                        values.push((opt.value) ? opt.value : opt.text);
                        return null;
                    }
                    // no form elements?
                    names.push(name);
                    values.push("");
                    return null;
                }
                if (tagName == "FORM" || tagName == "P" || tagName == "SPAN"
                    || tagName == "DIV"
                ) {
                    return elem.childNodes;
                }
                names.push(name);
                values.push(elem.value || '');
                return null;
            }
            return elem.childNodes;
        });
        return [names, values];
    },

/** @id withDocument */
    withDocument: function (doc, func) {
        var self = MochiKit.DOM;
        var oldDoc = self._document;
        var rval;
        try {
            self._document = doc;
            rval = func();
        } catch (e) {
            self._document = oldDoc;
            throw e;
        }
        self._document = oldDoc;
        return rval;
    },

/** @id registerDOMConverter */
    registerDOMConverter: function (name, check, wrap, /* optional */override) {
        MochiKit.DOM.domConverters.register(name, check, wrap, override);
    },

/** @id coerceToDOM */
    coerceToDOM: function (node, ctx) {
        var im = MochiKit.Iter;
        var self = MochiKit.DOM;
        var iter = im.iter;
        var repeat = im.repeat;
        var imap = im.imap;
        var domConverters = self.domConverters;
        var coerceToDOM = self.coerceToDOM;
        var NotFound = MochiKit.Base.NotFound;
        while (true) {
            if (typeof(node) == 'undefined' || node === null) {
                return null;
            }
            if (typeof(node.nodeType) != 'undefined' && node.nodeType > 0) {
                return node;
            }
            if (typeof(node) == 'number' || typeof(node) == 'boolean') {
                node = node.toString();
                // FALL THROUGH
            }
            if (typeof(node) == 'string') {
                return self._document.createTextNode(node);
            }
            if (typeof(node.toDOM) == 'function') {
                node = node.toDOM(ctx);
                continue;
            }
            if (typeof(node) == 'function') {
                node = node(ctx);
                continue;
            }

            // iterable
            var iterNodes = null;
            try {
                iterNodes = iter(node);
            } catch (e) {
                // pass
            }
            if (iterNodes) {
                return imap(
                    coerceToDOM,
                    iterNodes,
                    repeat(ctx)
                );
            }

            // adapter
            try {
                node = domConverters.match(node, ctx);
                continue;
            } catch (e) {
                if (e != NotFound) {
                    throw e;
                }
            }

            // fallback
            return self._document.createTextNode(node.toString());
        }
        // mozilla warnings aren't too bright
        return undefined;
    },

/** @id setNodeAttribute */        
    setNodeAttribute: function (node, attr, value) {
        var o = {};
        o[attr] = value;
        try {
            return MochiKit.DOM.updateNodeAttributes(node, o);
        } catch (e) {
            // pass
        }
        return null;
    },

/** @id getNodeAttribute */
    getNodeAttribute: function (node, attr) {
        var self = MochiKit.DOM;
        var rename = self.attributeArray.renames[attr];
        node = self.getElement(node);
        try {
            if (rename) {
                return node[rename];
            }
            return node.getAttribute(attr);
        } catch (e) {
            // pass
        }
        return null;
    },

/** @id updateNodeAttributes */
    updateNodeAttributes: function (node, attrs) {
        var elem = node;
        var self = MochiKit.DOM;
        if (typeof(node) == 'string') {
            elem = self.getElement(node);
        }
        if (attrs) {
            var updatetree = MochiKit.Base.updatetree;
            if (self.attributeArray.compliant) {
                // not IE, good.
                for (var k in attrs) {
                    var v = attrs[k];
                    if (typeof(v) == 'object' && typeof(elem[k]) == 'object') {
                        updatetree(elem[k], v);
                    } else if (k.substring(0, 2) == "on") {
                        if (typeof(v) == "string") {
                            v = new Function(v);
                        }
                        elem[k] = v;
                    } else {
                        elem.setAttribute(k, v);
                    }
                }
            } else {
                // IE is insane in the membrane
                var renames = self.attributeArray.renames;
                for (k in attrs) {
                    v = attrs[k];
                    var renamed = renames[k];
                    if (k == "style" && typeof(v) == "string") {
                        elem.style.cssText = v;
                    } else if (typeof(renamed) == "string") {
                        elem[renamed] = v;
                    } else if (typeof(elem[k]) == 'object'
                            && typeof(v) == 'object') {
                        updatetree(elem[k], v);
                    } else if (k.substring(0, 2) == "on") {
                        if (typeof(v) == "string") {
                            v = new Function(v);
                        }
                        elem[k] = v;
                    } else {
                        elem.setAttribute(k, v);
                    }
                }
            }
        }
        return elem;
    },

/** @id appendChildNodes */
    appendChildNodes: function (node/*, nodes...*/) {
        var elem = node;
        var self = MochiKit.DOM;
        if (typeof(node) == 'string') {
            elem = self.getElement(node);
        }
        var nodeStack = [
            self.coerceToDOM(
                MochiKit.Base.extend(null, arguments, 1),
                elem
            )
        ];
        var concat = MochiKit.Base.concat;
        while (nodeStack.length) {
            var n = nodeStack.shift();
            if (typeof(n) == 'undefined' || n === null) {
                // pass
            } else if (typeof(n.nodeType) == 'number') {
                elem.appendChild(n);
            } else {
                nodeStack = concat(n, nodeStack);
            }
        }
        return elem;
    },

/** @id replaceChildNodes */
    replaceChildNodes: function (node/*, nodes...*/) {
        var elem = node;
        var self = MochiKit.DOM;
        if (typeof(node) == 'string') {
            elem = self.getElement(node);
            arguments[0] = elem;
        }
        var child;
        while ((child = elem.firstChild)) {
            elem.removeChild(child);
        }
        if (arguments.length < 2) {
            return elem;
        } else {
            return self.appendChildNodes.apply(this, arguments);
        }
    },

/** @id createDOM */
    createDOM: function (name, attrs/*, nodes... */) {
        /*

            Create a DOM fragment in a really convenient manner, much like
            Nevow's <http://nevow.com> stan.

        */

        var elem;
        var self = MochiKit.DOM;
        var m = MochiKit.Base;
        if (typeof(attrs) == "string" || typeof(attrs) == "number") {
            var args = m.extend([name, null], arguments, 1);
            return arguments.callee.apply(this, args);
        }
        if (typeof(name) == 'string') {
            // Internet Explorer is dumb
            if (attrs && "name" in attrs && !self.attributeArray.compliant) {
                // http://msdn.microsoft.com/workshop/author/dhtml/reference/properties/name_2.asp
                name = ('<' + name + ' name="' + self.escapeHTML(attrs.name)
                    + '">');
            }
            elem = self._document.createElement(name);
        } else {
            elem = name;
        }
        if (attrs) {
            self.updateNodeAttributes(elem, attrs);
        }
        if (arguments.length <= 2) {
            return elem;
        } else {
            var args = m.extend([elem], arguments, 2);
            return self.appendChildNodes.apply(this, args);
        }
    },

/** @id createDOMFunc */
    createDOMFunc: function (/* tag, attrs, *nodes */) {
        var m = MochiKit.Base;
        return m.partial.apply(
            this,
            m.extend([MochiKit.DOM.createDOM], arguments)
        );
    },

/** @id swapDOM */
    swapDOM: function (dest, src) {
        var self = MochiKit.DOM;
        dest = self.getElement(dest);
        var parent = dest.parentNode;
        if (src) {
            src = self.getElement(src);
            parent.replaceChild(src, dest);
        } else {
            parent.removeChild(dest);
        }
        return src;
    },

/** @id getElement */
    getElement: function (id) {
        var self = MochiKit.DOM;
        if (arguments.length == 1) {
            return ((typeof(id) == "string") ?
                self._document.getElementById(id) : id);
        } else {
            return MochiKit.Base.map(self.getElement, arguments);
        }
    },

/** @id computedStyle */
    computedStyle: function (htmlElement, cssProperty, mozillaEquivalentCSS) {
        if (arguments.length == 2) {
            mozillaEquivalentCSS = cssProperty;
        }   
        var self = MochiKit.DOM;
        var el = self.getElement(htmlElement);
        var document = self._document;
        if (!el || el == document) {
            return undefined;
        }
        if (el.currentStyle) {
            return el.currentStyle[cssProperty];
        }
        if (typeof(document.defaultView) == 'undefined') {
            return undefined;
        }
        if (document.defaultView === null) {
            return undefined;
        }
        var style = document.defaultView.getComputedStyle(el, null);
        if (typeof(style) == "undefined" || style === null) {
            return undefined;
        }
        return style.getPropertyValue(mozillaEquivalentCSS);
    },

/** @id getElementsByTagAndClassName */
    getElementsByTagAndClassName: function (tagName, className,
            /* optional */parent) {
        var self = MochiKit.DOM;
        if (typeof(tagName) == 'undefined' || tagName === null) {
            tagName = '*';
        }
        if (typeof(parent) == 'undefined' || parent === null) {
            parent = self._document;
        }
        parent = self.getElement(parent);
        var children = (parent.getElementsByTagName(tagName)
            || self._document.all);
        if (typeof(className) == 'undefined' || className === null) {
            return MochiKit.Base.extend(null, children);
        }

        var elements = [];
        for (var i = 0; i < children.length; i++) {
            var child = children[i];
            var classNames = child.className.split(' ');
            for (var j = 0; j < classNames.length; j++) {
                if (classNames[j] == className) {
                    elements.push(child);
                    break;
                }
            }
        }

        return elements;
    },

    _newCallStack: function (path, once) {
        var rval = function () {
            var callStack = arguments.callee.callStack;
            for (var i = 0; i < callStack.length; i++) {
                if (callStack[i].apply(this, arguments) === false) {
                    break;
                }
            }
            if (once) {
                try {
                    this[path] = null;
                } catch (e) {
                    // pass
                }
            }
        };
        rval.callStack = [];
        return rval;
    },

/** @id addToCallStack */
    addToCallStack: function (target, path, func, once) {
        var self = MochiKit.DOM;
        var existing = target[path];
        var regfunc = existing;
        if (!(typeof(existing) == 'function'
                && typeof(existing.callStack) == "object"
                && existing.callStack !== null)) {
            regfunc = self._newCallStack(path, once);
            if (typeof(existing) == 'function') {
                regfunc.callStack.push(existing);
            }
            target[path] = regfunc;
        }
        regfunc.callStack.push(func);
    },

/** @id addLoadEvent */
    addLoadEvent: function (func) {
        var self = MochiKit.DOM;
        self.addToCallStack(self._window, "onload", func, true);
        
    },

/** @id focusOnLoad */
    focusOnLoad: function (element) {
        var self = MochiKit.DOM;
        self.addLoadEvent(function () {
            element = self.getElement(element);
            if (element) {
                element.focus();
            }
        });
    },

/** @id setElementClass */            
    setElementClass: function (element, className) {
        var self = MochiKit.DOM;
        var obj = self.getElement(element);
        if (self.attributeArray.compliant) {
            obj.setAttribute("class", className);
        } else {
            obj.setAttribute("className", className);
        }
    },

/** @id toggleElementClass */            
    toggleElementClass: function (className/*, element... */) {
        var self = MochiKit.DOM;
        for (var i = 1; i < arguments.length; i++) {
            var obj = self.getElement(arguments[i]);
            if (!self.addElementClass(obj, className)) {
                self.removeElementClass(obj, className);
            }
        }
    },

/** @id addElementClass */
    addElementClass: function (element, className) {
        var self = MochiKit.DOM;
        var obj = self.getElement(element);
        var cls = obj.className;
        // trivial case, no className yet
        if (cls.length === 0) {
            self.setElementClass(obj, className);
            return true;
        }
        // the other trivial case, already set as the only class
        if (cls == className) {
            return false;
        }
        var classes = obj.className.split(" ");
        for (var i = 0; i < classes.length; i++) {
            // already present
            if (classes[i] == className) {
                return false;
            }
        }
        // append class
        self.setElementClass(obj, cls + " " + className);
        return true;
    },

/** @id removeElementClass */
    removeElementClass: function (element, className) {
        var self = MochiKit.DOM;
        var obj = self.getElement(element);
        var cls = obj.className;
        // trivial case, no className yet
        if (cls.length === 0) {
            return false;
        }
        // other trivial case, set only to className
        if (cls == className) {
            self.setElementClass(obj, "");
            return true;
        }
        var classes = obj.className.split(" ");
        for (var i = 0; i < classes.length; i++) {
            // already present
            if (classes[i] == className) {
                // only check sane case where the class is used once
                classes.splice(i, 1);
                self.setElementClass(obj, classes.join(" "));
                return true;
            }
        }
        // not found
        return false;
    },

/** @id swapElementClass */
    swapElementClass: function (element, fromClass, toClass) {
        var obj = MochiKit.DOM.getElement(element);
        var res = MochiKit.DOM.removeElementClass(obj, fromClass);
        if (res) {
            MochiKit.DOM.addElementClass(obj, toClass);
        }
        return res;
    },

/** @id hasElementClass */
    hasElementClass: function (element, className/*...*/) {
        var obj = MochiKit.DOM.getElement(element);
        var classes = obj.className.split(" ");
        for (var i = 1; i < arguments.length; i++) {
            var good = false;
            for (var j = 0; j < classes.length; j++) {
                if (classes[j] == arguments[i]) {
                    good = true;
                    break;
                }
            }
            if (!good) {
                return false;
            }
        }
        return true;
    },

/** @id escapeHTML */
    escapeHTML: function (s) {
        return s.replace(/&/g, "&amp;"
            ).replace(/"/g, "&quot;"
            ).replace(/</g, "&lt;"
            ).replace(/>/g, "&gt;");
    },

//

/** @id toHTML */
    toHTML: function (dom) {
        return MochiKit.DOM.emitHTML(dom).join("");
    },



/** @id emitHTML */
    emitHTML: function (dom, /* optional */lst) {
        if (typeof(lst) == 'undefined' || lst === null) {
            lst = [];
        }
        // queue is the call stack, we're doing this non-recursively
        var queue = [dom];
        var self = MochiKit.DOM;
        var escapeHTML = self.escapeHTML;
        var attributeArray = self.attributeArray;
        while (queue.length) {
            dom = queue.pop();
            if (typeof(dom) == 'string') {
                lst.push(dom);
            } else if (dom.nodeType == 1) {
                // we're not using higher order stuff here
                // because safari has heisenbugs.. argh.
                //
                // I think it might have something to do with
                // garbage collection and function calls.
                lst.push('<' + dom.nodeName.toLowerCase());
                var attributes = [];
                var domAttr = attributeArray(dom);
                for (var i = 0; i < domAttr.length; i++) {
                    var a = domAttr[i];
                    attributes.push([
                        " ",
                        a.name,
                        '="',
                        escapeHTML(a.value),
                        '"'
                    ]);
                }
                attributes.sort();
                for (i = 0; i < attributes.length; i++) {
                    var attrs = attributes[i];
                    for (var j = 0; j < attrs.length; j++) {
                        lst.push(attrs[j]);
                    }
                }
                if (dom.hasChildNodes()) {
                    lst.push(">");
                    // queue is the FILO call stack, so we put the close tag
                    // on first
                    queue.push("</" + dom.nodeName.toLowerCase() + ">");
                    var cnodes = dom.childNodes;
                    for (i = cnodes.length - 1; i >= 0; i--) {
                        queue.push(cnodes[i]);
                    }
                } else {
                    lst.push('/>');
                }
            } else if (dom.nodeType == 3) {
                lst.push(escapeHTML(dom.nodeValue));
            }
        }
        return lst;
    },

/** @id setDisplayForElement */
    setDisplayForElement: function (display, element/*, ...*/) {
        var m = MochiKit.Base;
        var elements = m.extend(null, arguments, 1);
        MochiKit.Iter.forEach(
            m.filter(null, m.map(MochiKit.DOM.getElement, elements)),
            function (element) {
                element.style.display = display;
            }
        );
    },

/** @id scrapeText */
    scrapeText: function (node, /* optional */asArray) {
        var rval = [];
        (function (node) {
            var cn = node.childNodes;
            if (cn) {
                for (var i = 0; i < cn.length; i++) {
                    arguments.callee.call(this, cn[i]);
                }
            }
            var nodeValue = node.nodeValue;
            if (typeof(nodeValue) == 'string') {
                rval.push(nodeValue);
            }
        })(MochiKit.DOM.getElement(node));
        if (asArray) {
            return rval;
        } else {
            return rval.join("");
        }
    },


    __new__: function (win) {

        var m = MochiKit.Base;
        this._document = document;
        this._window = win;

        this.domConverters = new m.AdapterRegistry(); 
        
        var __tmpElement = this._document.createElement("span");
        var attributeArray;
        if (__tmpElement && __tmpElement.attributes &&
                __tmpElement.attributes.length > 0) {
            // for braindead browsers (IE) that insert extra junk
            var filter = m.filter;
            attributeArray = function (node) {
                return filter(attributeArray.ignoreAttrFilter, node.attributes);
            };
            attributeArray.ignoreAttr = {};
            MochiKit.Iter.forEach(__tmpElement.attributes, function (a) {
                attributeArray.ignoreAttr[a.name] = a.value;
            });
            attributeArray.ignoreAttrFilter = function (a) {
                return (attributeArray.ignoreAttr[a.name] != a.value);
            };
            attributeArray.compliant = false;
            attributeArray.renames = {
                "class": "className",
                "checked": "defaultChecked",
                "usemap": "useMap",
                "for": "htmlFor"
            };
        } else {
            attributeArray = function (node) {
                /***
                    
                    Return an array of attributes for a given node,
                    filtering out attributes that don't belong for
                    that are inserted by "Certain Browsers".

                ***/
                return node.attributes;
            };
            attributeArray.compliant = true;
            attributeArray.renames = {};
        }
        this.attributeArray = attributeArray;


        // shorthand for createDOM syntax
        var createDOMFunc = this.createDOMFunc;
/** @id UL */
        this.UL = createDOMFunc("ul");

/** @id OL */
        this.OL = createDOMFunc("ol");

/** @id LI */
        this.LI = createDOMFunc("li");

/** @id TD */
        this.TD = createDOMFunc("td");

/** @id TR */
        this.TR = createDOMFunc("tr");

/** @id TBODY */
        this.TBODY = createDOMFunc("tbody");

/** @id THEAD */
        this.THEAD = createDOMFunc("thead");

/** @id TFOOT */
        this.TFOOT = createDOMFunc("tfoot");

/** @id TABLE */
        this.TABLE = createDOMFunc("table");

/** @id TH */
        this.TH = createDOMFunc("th");

/** @id INPUT */
        this.INPUT = createDOMFunc("input");

/** @id SPAN */
        this.SPAN = createDOMFunc("span");

/** @id A */
        this.A = createDOMFunc("a");

/** @id DIV */
        this.DIV = createDOMFunc("div");

/** @id IMG */
        this.IMG = createDOMFunc("img");

/** @id BUTTON */
        this.BUTTON = createDOMFunc("button");

/** @id TT */
        this.TT = createDOMFunc("tt");

/** @id PRE */
        this.PRE = createDOMFunc("pre");

/** @id H1 */
        this.H1 = createDOMFunc("h1");

/** @id H2 */
        this.H2 = createDOMFunc("h2");

/** @id H3 */
        this.H3 = createDOMFunc("h3");

/** @id BR */
        this.BR = createDOMFunc("br");

/** @id HR */
        this.HR = createDOMFunc("hr");

/** @id LABEL */
        this.LABEL = createDOMFunc("label");

/** @id TEXTAREA */
        this.TEXTAREA = createDOMFunc("textarea");

/** @id FORM */
        this.FORM = createDOMFunc("form");

/** @id P */
        this.P = createDOMFunc("p");

/** @id SELECT */
        this.SELECT = createDOMFunc("select");

/** @id OPTION */
        this.OPTION = createDOMFunc("option");

/** @id OPTGROUP */
        this.OPTGROUP = createDOMFunc("optgroup");

/** @id LEGEND */
        this.LEGEND = createDOMFunc("legend");

/** @id FIELDSET */
        this.FIELDSET = createDOMFunc("fieldset");

/** @id STRONG */
        this.STRONG = createDOMFunc("strong");

/** @id CANVAS */
        this.CANVAS = createDOMFunc("canvas");

/** @id hideElement */
        this.hideElement = m.partial(this.setDisplayForElement, "none");

/** @id showElement */
        this.showElement = m.partial(this.setDisplayForElement, "block");

/** @id removeElement */
        this.removeElement = this.swapDOM;

/** @id $ */        
        this.$ = this.getElement;

        this.EXPORT_TAGS = {
            ":common": this.EXPORT,
            ":all": m.concat(this.EXPORT, this.EXPORT_OK)
        };

        m.nameFunctions(this);

    }
});

MochiKit.DOM.__new__(((typeof(window) == "undefined") ? this : window));

//
// XXX: Internet Explorer blows
//
if (!MochiKit.__compat__) {
    withWindow = MochiKit.DOM.withWindow;
    withDocument = MochiKit.DOM.withDocument;
}

MochiKit.Base._exportSymbols(this, MochiKit.DOM);
