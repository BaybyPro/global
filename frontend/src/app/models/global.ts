export class Global{
    //regex
    //para controlar las restricciones del los datos
    public static lasnameRefex:string = "[A-Z\\s]{1,20}$"
    public static nameRegex: string = "[A-Z]{1,20}$"
    public static namesRegex: string = "[A-Z\\s]{1,50}$"
    public static datesId:string ="[a-zA-Z0-9]{1,20}$"
    public static datesNumber:string ="[0-9]*"
    public static emailRegex:string ="[A-Za-z0-9._%-]+@[A-Za-z0-9._%-]+\\.[a-z]{2,3}"
    public static contacNumberRegex:string ="^[0-9]{9,10}$"

    public static error :string = "error"
    //HTTP
    public static apiUrl:string="http://127.0.0.1:8000/api"

    //message
    public static unauthroried: string="No estas autorizado para acceder a esa pagina."
    public static genericError:string="Errores con el servidor API res.";
}