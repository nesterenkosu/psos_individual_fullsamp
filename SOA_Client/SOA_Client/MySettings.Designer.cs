//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SOA_Client {
    
    
    [global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.VisualStudio.Editors.SettingsDesigner.SettingsSingleFileGenerator", "12.0.0.0")]
    internal sealed partial class MySettings : global::System.Configuration.ApplicationSettingsBase {
        
        private static MySettings defaultInstance = ((MySettings)(global::System.Configuration.ApplicationSettingsBase.Synchronized(new MySettings())));
        
        public static MySettings Default {
            get {
                return defaultInstance;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("True")]
        public bool ProtocolXmlRpc {
            get {
                return ((bool)(this["ProtocolXmlRpc"]));
            }
            set {
                this["ProtocolXmlRpc"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("False")]
        public bool ProtocolSoap {
            get {
                return ((bool)(this["ProtocolSoap"]));
            }
            set {
                this["ProtocolSoap"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("False")]
        public bool ProtocolRest {
            get {
                return ((bool)(this["ProtocolRest"]));
            }
            set {
                this["ProtocolRest"] = value;
            }
        }
    }
}
