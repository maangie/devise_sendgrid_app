module ApplicationHelper
  def app_input_classes
    "mt-2 block w-full rounded-[1.25rem] border border-slate-200/80 bg-white px-4 py-3 text-base text-slate-900 shadow-sm shadow-slate-200/70 outline-none transition placeholder:text-slate-400 focus:border-lagoon focus:ring-4 focus:ring-lagoon/20"
  end

  def app_primary_button_classes
    "inline-flex items-center justify-center rounded-full bg-slate-950 px-5 py-3 text-sm font-semibold tracking-wide text-white transition hover:-translate-y-0.5 hover:bg-lagoon focus:outline-none focus:ring-4 focus:ring-lagoon/25"
  end

  def app_secondary_button_classes
    "inline-flex items-center justify-center rounded-full border border-slate-300/80 bg-white/80 px-5 py-3 text-sm font-semibold text-slate-700 transition hover:-translate-y-0.5 hover:border-slate-900 hover:text-slate-950"
  end

  def flash_banner_classes(type)
    base = "rounded-[1.5rem] border px-4 py-3 text-sm font-medium shadow-sm backdrop-blur"

    tone = case type.to_sym
           when :notice
             "border-lagoon/25 bg-lagoon/10 text-slate-900"
           when :alert
             "border-mango/30 bg-mango/10 text-slate-900"
           else
             "border-slate-200/80 bg-white/80 text-slate-800"
           end

    "#{base} #{tone}"
  end
end
